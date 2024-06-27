exports.Chat = onRequest(async (req, res) => {
  corsHandler(req, res, async () => {
    const { message, userEmail } = req.body;

    try {
      if (!userEmail || typeof userEmail !== "string") {
        throw new Error("Invalid user email provided.");
      }

      const chatSessionRef = db
        .collection("users")
        .doc(userEmail)
        .collection("chats")
        .doc("chatSession");
      const chatSessionDoc = await chatSessionRef.get();

      if (!chatSessionDoc.exists) {
        throw new Error("Chat session document does not exist.");
      }

      // Extract existing messages or initialize an empty array
      const existingMessages = chatSessionDoc.data().messages || [];

      // Add new user message
      const userMessage = {
        role: "user",
        type: "text",
        message: message,
      };
      existingMessages.push(userMessage);

      // Format messages for OpenAI
      const openaiMessages = existingMessages.map((msg) => ({
        role: msg.role,
        content: msg.content,
      }));

      // Call OpenAI chat completion API
      const completion = await openai.chat.completions.create({
        model: "gpt-3.5-turbo", // Adjust model as needed
        messages: openaiMessages,
      });

      const assistantContent = completion.choices[0]?.message?.content;
      if (!assistantContent) {
        throw new Error("No valid assistant response from OpenAI");
      }

      // Add assistant response to the message list
      const assistantMessage = {
        role: "assistant",
        type: "text",
        content: assistantContent,
      };
      existingMessages.push(assistantMessage);

      // Update chat session document with the updated messages
      await chatSessionRef.update({ messages: existingMessages });

      // Respond with assistant's response
      res.status(200).json({ assistantResponse: assistantContent });
    } catch (error) {
      console.error("Error in completeChat function:", error);
      res.status(500).json({ error: error.message });
    }
  });
});
