# 4See AI platform

## To run the agent

1. Install docker
2. Install ollama
3. Install python > 3.10

## Run the LLM

```bash
ollama run llama3
```

## Run the Docker containers

```bash
docker compose --profile db build
docker compose --profile ci up --remove-orphans
```

## clone the Repo

```bash
git clone https://github.com/joshnik-ai-labs/4see.git
   cd 4see
```

## Create a venv in the root directory
### For Windows 
```bash
python -m venv venv
.\venv\Scripts\activate
```
### For  macOs/linux
```bash
python3 -m venv venv
source venv/bin/activate
```

In the root directory of the repo

```bash
pip install -r ./rag/requirements.txt
```

Run the app

```bash
uvicorn rag.app:app --host 0.0.0.0 --port 8001 --reload --log-level debug
```

## To start the platform

 TODO
 [x] Milvus
 [x] File processing Agent
 [x] QA Agent
