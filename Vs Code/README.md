
# Vs Code Settings 

Vs code setting used by me 

```vscodesettings.json```

```json 
{
  "workbench.colorTheme": "One Dark Pro Darker",
  "workbench.iconTheme": "material-icon-theme",
  "editor.fontSize": 24,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit"
  },
  "editor.mouseWheelZoom": true,
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "vscode.typescript-language-features"
  },
  "workbench.startupEditor": "none",
  "window.zoomLevel": 1,
  "editor.fontFamily": "Fira Code",
  "editor.minimap.scale": 2,
  "editor.minimap.autohide": true,
  "editor.minimap.renderCharacters": false,
  "files.autoSave": "afterDelay",
  "editor.fontLigatures": true,
  "editor.wordWrap": "on",
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "editor.linkedEditing": true,
  "javascript.updateImportsOnFileMove.enabled": "always",
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "terminal.integrated.enableMultiLinePasteWarning": "never",
  "css.lint.unknownAtRules": "ignore",
  "cSpell.enableFiletypes": ["tailwindcss"],
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "git.autofetch": true,
  "explorer.confirmDragAndDrop": false,
  "[css]": {
    "editor.defaultFormatter": "vscode.css-language-features"
  },
  "git.confirmSync": false,
  "files.associations": {
    ".env*": "dotenv"
  },
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "keyword.other.dotenv",
        "settings": {
          "foreground": "#FF000000"
        }
      }
    ]
  },
  "dotenv.enableAutocloaking": true,
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "cSpell.userWords": [
    "firestore",
    "formik",
    "headlessui",
    "joshnik",
    "langchain",
    "lucide",
    "nextjs",
    "openai",
    "praveen",
    "Seema",
    "signup",
    "tailwindcss",
    "tiktoken"
  ],
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "typescript.updateImportsOnFileMove.enabled": "always",
  "security.workspace.trust.untrustedFiles": "open",
  "terminal.integrated.defaultProfile.windows": "PowerShell",
  "terminal.integrated.fontFamily": "FiraCode Nerd Font",
  "git.openRepositoryInParentFolders": "never",
  "terminal.integrated.env.windows": {},
  "console-ninja.featureSet": "Community",
  "editor.renderWhitespace": "all",
  "editor.tabSize": 2,
  "terminal.integrated.fontWeight": "normal",
  "terminal.integrated.fontSize": 11,
  "reactSnippets.settings.importReactOnTop": false,
  "reactSnippets.settings.prettierEnabled": true,
  "explorer.confirmPasteNative": false,
  "diffEditor.ignoreTrimWhitespace": false,
  "explorer.confirmDelete": false,
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[markdown]": {
    "editor.defaultFormatter": "yzhang.markdown-all-in-one"
  }
}

```
Copy  this  ```extentions``` file 
```json

[
  {
    "identifier": {
      "id": "ritwickdey.liveserver",
      "uuid": "b63c44fd-0457-4696-99e9-dbfdf70d77de"
    },
    "version": "5.7.9",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ritwickdey.liveserver-5.7.9",
      "scheme": "file"
    },
    "relativeLocation": "ritwickdey.liveserver-5.7.9",
    "metadata": {
      "installedTimestamp": 1718719633962,
      "pinned": false,
      "source": "gallery",
      "id": "b63c44fd-0457-4696-99e9-dbfdf70d77de",
      "publisherId": "17fd9a78-e430-4a78-add2-ade4a8830352",
      "publisherDisplayName": "Ritwick Dey",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "visualstudioexptteam.intellicode-api-usage-examples",
      "uuid": "9fa2a00e-3bfa-4c2a-abc4-a865bb2b5cf3"
    },
    "version": "0.2.8",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/visualstudioexptteam.intellicode-api-usage-examples-0.2.8",
      "scheme": "file"
    },
    "relativeLocation": "visualstudioexptteam.intellicode-api-usage-examples-0.2.8",
    "metadata": {
      "installedTimestamp": 1718719641826,
      "pinned": false,
      "source": "gallery",
      "id": "9fa2a00e-3bfa-4c2a-abc4-a865bb2b5cf3",
      "publisherId": "e8db1608-52e8-4d8d-92a6-779c5db302a9",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "formulahendry.auto-rename-tag",
      "uuid": "6e440e71-8ed9-4f25-bb78-4b13096b8a03"
    },
    "version": "0.1.10",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/formulahendry.auto-rename-tag-0.1.10",
      "scheme": "file"
    },
    "relativeLocation": "formulahendry.auto-rename-tag-0.1.10",
    "metadata": {
      "installedTimestamp": 1718719657295,
      "pinned": false,
      "source": "gallery",
      "id": "6e440e71-8ed9-4f25-bb78-4b13096b8a03",
      "publisherId": "38bbe3f0-5204-4170-845e-c2f966d979b8",
      "publisherDisplayName": "Jun Han",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "visualstudioexptteam.vscodeintellicode",
      "uuid": "876e8f93-74d0-4f4f-91b7-34a09f19f444"
    },
    "version": "1.3.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/visualstudioexptteam.vscodeintellicode-1.3.1",
      "scheme": "file"
    },
    "relativeLocation": "visualstudioexptteam.vscodeintellicode-1.3.1",
    "metadata": {
      "installedTimestamp": 1718719641831,
      "pinned": false,
      "source": "gallery",
      "id": "876e8f93-74d0-4f4f-91b7-34a09f19f444",
      "publisherId": "e8db1608-52e8-4d8d-92a6-779c5db302a9",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "ms-vscode.remote-explorer",
      "uuid": "11858313-52cc-4e57-b3e4-d7b65281e34b"
    },
    "version": "0.4.3",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-vscode.remote-explorer-0.4.3",
      "scheme": "file"
    },
    "relativeLocation": "ms-vscode.remote-explorer-0.4.3",
    "metadata": {
      "installedTimestamp": 1718719676266,
      "pinned": false,
      "source": "gallery",
      "id": "11858313-52cc-4e57-b3e4-d7b65281e34b",
      "publisherId": "5f5636e7-69ed-4afe-b5d6-8d231fb3d3ee",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "dsznajder.es7-react-js-snippets",
      "uuid": "19804510-b475-4dae-b0f7-6ca08fd1af0c"
    },
    "version": "4.4.3",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/dsznajder.es7-react-js-snippets-4.4.3",
      "scheme": "file"
    },
    "relativeLocation": "dsznajder.es7-react-js-snippets-4.4.3",
    "metadata": {
      "installedTimestamp": 1718719679219,
      "pinned": false,
      "source": "gallery",
      "id": "19804510-b475-4dae-b0f7-6ca08fd1af0c",
      "publisherId": "7ea644b4-2d93-4979-aac5-a12afebeb762",
      "publisherDisplayName": "dsznajder",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "yzhang.markdown-all-in-one",
      "uuid": "98790d67-10fa-497c-9113-f6c7489207b2"
    },
    "version": "3.6.2",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/yzhang.markdown-all-in-one-3.6.2",
      "scheme": "file"
    },
    "relativeLocation": "yzhang.markdown-all-in-one-3.6.2",
    "metadata": {
      "installedTimestamp": 1718719718106,
      "pinned": false,
      "source": "gallery",
      "id": "98790d67-10fa-497c-9113-f6c7489207b2",
      "publisherId": "36c8b41c-6ef6-4bf5-a5b7-65bef29b606f",
      "publisherDisplayName": "Yu Zhang",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "mhutchie.git-graph",
      "uuid": "438221f8-1107-4ccd-a6fe-f3b7fe0856b7"
    },
    "version": "1.30.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/mhutchie.git-graph-1.30.0",
      "scheme": "file"
    },
    "relativeLocation": "mhutchie.git-graph-1.30.0",
    "metadata": {
      "installedTimestamp": 1718719723268,
      "pinned": false,
      "source": "gallery",
      "id": "438221f8-1107-4ccd-a6fe-f3b7fe0856b7",
      "publisherId": "996496dc-099f-469d-b89c-0d7713179365",
      "publisherDisplayName": "mhutchie",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "streetsidesoftware.code-spell-checker",
      "uuid": "f6dbd813-b0a0-42c1-90ea-10dde9d925a7"
    },
    "version": "3.0.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/streetsidesoftware.code-spell-checker-3.0.1",
      "scheme": "file"
    },
    "relativeLocation": "streetsidesoftware.code-spell-checker-3.0.1",
    "metadata": {
      "installedTimestamp": 1718768023136,
      "pinned": false,
      "source": "gallery",
      "id": "f6dbd813-b0a0-42c1-90ea-10dde9d925a7",
      "publisherId": "67600ca7-88fb-4104-9f7e-dd51c00facf2",
      "publisherDisplayName": "Street Side Software",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "formulahendry.auto-close-tag",
      "uuid": "d3836729-9cc1-42c1-b2af-d50071f57d29"
    },
    "version": "0.5.15",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/formulahendry.auto-close-tag-0.5.15",
      "scheme": "file"
    },
    "relativeLocation": "formulahendry.auto-close-tag-0.5.15",
    "metadata": {
      "installedTimestamp": 1718768084577,
      "pinned": false,
      "source": "gallery",
      "id": "d3836729-9cc1-42c1-b2af-d50071f57d29",
      "publisherId": "38bbe3f0-5204-4170-845e-c2f966d979b8",
      "publisherDisplayName": "Jun Han",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "formulahendry.auto-complete-tag",
      "uuid": "366a9f01-2d1b-48b9-b7df-014ff8dea46b"
    },
    "version": "0.1.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/formulahendry.auto-complete-tag-0.1.0",
      "scheme": "file"
    },
    "relativeLocation": "formulahendry.auto-complete-tag-0.1.0",
    "metadata": {
      "installedTimestamp": 1718768115957,
      "pinned": false,
      "source": "gallery",
      "id": "366a9f01-2d1b-48b9-b7df-014ff8dea46b",
      "publisherId": "38bbe3f0-5204-4170-845e-c2f966d979b8",
      "publisherDisplayName": "Jun Han",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "seatonjiang.gitmoji-vscode",
      "uuid": "d7b0c43a-5aaa-4181-9196-293551f7b37a"
    },
    "version": "1.2.5",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/seatonjiang.gitmoji-vscode-1.2.5",
      "scheme": "file"
    },
    "relativeLocation": "seatonjiang.gitmoji-vscode-1.2.5",
    "metadata": {
      "installedTimestamp": 1718768161831,
      "pinned": false,
      "source": "gallery",
      "id": "d7b0c43a-5aaa-4181-9196-293551f7b37a",
      "publisherId": "d9ab3f22-76d4-4926-a5ed-7753e4f5fc23",
      "publisherDisplayName": "Seaton Jiang",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "dotenv.dotenv-vscode",
      "uuid": "bfc47172-d830-4aab-9c7b-ecfdb1e97a29"
    },
    "version": "0.28.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/dotenv.dotenv-vscode-0.28.1",
      "scheme": "file"
    },
    "relativeLocation": "dotenv.dotenv-vscode-0.28.1",
    "metadata": {
      "installedTimestamp": 1718768201249,
      "pinned": false,
      "source": "gallery",
      "id": "bfc47172-d830-4aab-9c7b-ecfdb1e97a29",
      "publisherId": "a60a9842-7ba3-4610-9d6c-1db6f3bccc4e",
      "publisherDisplayName": "Dotenv",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "riazxrazor.html-to-jsx",
      "uuid": "cf68f59b-5a20-46b3-98be-3ffc6338d4a3"
    },
    "version": "0.0.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/riazxrazor.html-to-jsx-0.0.1",
      "scheme": "file"
    },
    "relativeLocation": "riazxrazor.html-to-jsx-0.0.1",
    "metadata": {
      "installedTimestamp": 1718768233262,
      "pinned": false,
      "source": "gallery",
      "id": "cf68f59b-5a20-46b3-98be-3ffc6338d4a3",
      "publisherId": "d4e4a066-fcfe-4377-9786-211eacb65d27",
      "publisherDisplayName": "Riaz Laskar",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "christian-kohler.path-intellisense",
      "uuid": "a41c1549-4053-44d4-bf30-60fc809b4a86"
    },
    "version": "2.9.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/christian-kohler.path-intellisense-2.9.0",
      "scheme": "file"
    },
    "relativeLocation": "christian-kohler.path-intellisense-2.9.0",
    "metadata": {
      "installedTimestamp": 1718768259860,
      "pinned": false,
      "source": "gallery",
      "id": "a41c1549-4053-44d4-bf30-60fc809b4a86",
      "publisherId": "a892fb38-060b-475f-9e73-2e06a8a17a68",
      "publisherDisplayName": "Christian Kohler",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "formulahendry.code-runner",
      "uuid": "a6a0c5b2-d078-4bf5-a9ee-4e37054414b3"
    },
    "version": "0.12.2",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/formulahendry.code-runner-0.12.2",
      "scheme": "file"
    },
    "relativeLocation": "formulahendry.code-runner-0.12.2",
    "metadata": {
      "installedTimestamp": 1720006839302,
      "pinned": false,
      "source": "gallery",
      "id": "a6a0c5b2-d078-4bf5-a9ee-4e37054414b3",
      "publisherId": "38bbe3f0-5204-4170-845e-c2f966d979b8",
      "publisherDisplayName": "Jun Han",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "esbenp.prettier-vscode",
      "uuid": "96fa4707-6983-4489-b7c5-d5ffdfdcce90"
    },
    "version": "11.0.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/esbenp.prettier-vscode-11.0.0",
      "scheme": "file"
    },
    "relativeLocation": "esbenp.prettier-vscode-11.0.0",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1723798834865,
      "pinned": false,
      "source": "gallery",
      "id": "96fa4707-6983-4489-b7c5-d5ffdfdcce90",
      "publisherId": "d16f4e39-2ffb-44e3-9c0d-79d873570e3a",
      "publisherDisplayName": "Prettier",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "ms-python.debugpy",
      "uuid": "4bd5d2c9-9d65-401a-b0b2-7498d9f17615"
    },
    "version": "2024.10.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-python.debugpy-2024.10.0-win32-x64",
      "scheme": "file"
    },
    "relativeLocation": "ms-python.debugpy-2024.10.0-win32-x64",
    "metadata": {
      "installedTimestamp": 1724230987111,
      "source": "gallery",
      "id": "4bd5d2c9-9d65-401a-b0b2-7498d9f17615",
      "publisherId": "998b010b-e2af-44a5-a6cd-0b5fd3b9b6f8",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "win32-x64",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "ms-python.python",
      "uuid": "f1f59ae4-9318-4f3c-a9b5-81b2eaa5f8a5"
    },
    "version": "2024.14.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-python.python-2024.14.1-win32-x64",
      "scheme": "file"
    },
    "relativeLocation": "ms-python.python-2024.14.1-win32-x64",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1726223494072,
      "pinned": false,
      "source": "gallery",
      "id": "f1f59ae4-9318-4f3c-a9b5-81b2eaa5f8a5",
      "publisherId": "998b010b-e2af-44a5-a6cd-0b5fd3b9b6f8",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "win32-x64",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "zhuangtongfa.material-theme",
      "uuid": "26a529c9-2654-4b95-a63f-02f6a52429e6"
    },
    "version": "3.17.5",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/zhuangtongfa.material-theme-3.17.5",
      "scheme": "file"
    },
    "relativeLocation": "zhuangtongfa.material-theme-3.17.5",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1727069834030,
      "pinned": false,
      "source": "gallery",
      "id": "26a529c9-2654-4b95-a63f-02f6a52429e6",
      "publisherId": "8ae75bda-ec22-4a17-9340-abf1a20beca9",
      "publisherDisplayName": "binaryify",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "pkief.material-icon-theme",
      "uuid": "5db78037-f674-459f-a236-db622c427c5b"
    },
    "version": "5.11.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/pkief.material-icon-theme-5.11.1",
      "scheme": "file"
    },
    "relativeLocation": "pkief.material-icon-theme-5.11.1",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1727069834028,
      "pinned": false,
      "source": "gallery",
      "id": "5db78037-f674-459f-a236-db622c427c5b",
      "publisherId": "f9e5bc2f-fea1-4075-917f-d83e01e69f56",
      "publisherDisplayName": "Philipp Kief",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "ms-python.vscode-pylance",
      "uuid": "364d2426-116a-433a-a5d8-a5098dc3afbd"
    },
    "version": "2024.9.2",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-python.vscode-pylance-2024.9.2",
      "scheme": "file"
    },
    "relativeLocation": "ms-python.vscode-pylance-2024.9.2",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1727069947916,
      "pinned": false,
      "source": "gallery",
      "id": "364d2426-116a-433a-a5d8-a5098dc3afbd",
      "publisherId": "998b010b-e2af-44a5-a6cd-0b5fd3b9b6f8",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "bradlc.vscode-tailwindcss",
      "uuid": "4db62a7c-7d70-419c-96d2-6c3a4dc77ea5"
    },
    "version": "0.12.11",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/bradlc.vscode-tailwindcss-0.12.11",
      "scheme": "file"
    },
    "relativeLocation": "bradlc.vscode-tailwindcss-0.12.11",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1727244916542,
      "pinned": false,
      "source": "gallery",
      "id": "4db62a7c-7d70-419c-96d2-6c3a4dc77ea5",
      "publisherId": "84722833-669b-4c7d-920e-b60e43fae19a",
      "publisherDisplayName": "Tailwind Labs",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "ms-azuretools.vscode-docker",
      "uuid": "0479fc1c-3d67-49f9-b087-fb9069afe48f"
    },
    "version": "1.29.3",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-azuretools.vscode-docker-1.29.3",
      "scheme": "file"
    },
    "relativeLocation": "ms-azuretools.vscode-docker-1.29.3",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1727244916978,
      "pinned": false,
      "source": "gallery",
      "id": "0479fc1c-3d67-49f9-b087-fb9069afe48f",
      "publisherId": "52b787f2-79a9-4f32-99b4-393afe3005d3",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "ms-vscode-remote.remote-wsl",
      "uuid": "f0c5397b-d357-4197-99f0-cb4202f22818"
    },
    "version": "0.88.4",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-vscode-remote.remote-wsl-0.88.4",
      "scheme": "file"
    },
    "relativeLocation": "ms-vscode-remote.remote-wsl-0.88.4",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1727333686970,
      "pinned": false,
      "source": "gallery",
      "id": "f0c5397b-d357-4197-99f0-cb4202f22818",
      "publisherId": "ac9410a2-0d75-40ec-90de-b59bb705801d",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "ms-vscode-remote.remote-containers",
      "uuid": "93ce222b-5f6f-49b7-9ab1-a0463c6238df"
    },
    "version": "0.388.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-vscode-remote.remote-containers-0.388.0",
      "scheme": "file"
    },
    "relativeLocation": "ms-vscode-remote.remote-containers-0.388.0",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1728232621403,
      "pinned": false,
      "source": "gallery",
      "id": "93ce222b-5f6f-49b7-9ab1-a0463c6238df",
      "publisherId": "ac9410a2-0d75-40ec-90de-b59bb705801d",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "ms-python.python",
      "uuid": "f1f59ae4-9318-4f3c-a9b5-81b2eaa5f8a5"
    },
    "version": "2024.16.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-python.python-2024.16.0-win32-x64",
      "scheme": "file"
    },
    "relativeLocation": "ms-python.python-2024.16.0-win32-x64",
    "metadata": {
      "isApplicationScoped": false,
      "isMachineScoped": false,
      "isBuiltin": false,
      "installedTimestamp": 1728232962058,
      "pinned": false,
      "source": "gallery",
      "id": "f1f59ae4-9318-4f3c-a9b5-81b2eaa5f8a5",
      "publisherId": "998b010b-e2af-44a5-a6cd-0b5fd3b9b6f8",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "win32-x64",
      "updated": true,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false,
      "preRelease": false
    }
  },
  {
    "identifier": {
      "id": "editorconfig.editorconfig",
      "uuid": "f60a60a6-95ba-42d4-b41c-3d24c1b89588"
    },
    "version": "0.16.4",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/editorconfig.editorconfig-0.16.4",
      "scheme": "file"
    },
    "relativeLocation": "editorconfig.editorconfig-0.16.4",
    "metadata": {
      "installedTimestamp": 1728233001795,
      "pinned": false,
      "source": "gallery",
      "id": "f60a60a6-95ba-42d4-b41c-3d24c1b89588",
      "publisherId": "1ed869e4-8588-4af4-a51e-9c1c86b034b9",
      "publisherDisplayName": "EditorConfig",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "xabikos.javascriptsnippets",
      "uuid": "a2cec723-5349-460d-9de9-0fd1f8d3456f"
    },
    "version": "1.8.0",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/xabikos.javascriptsnippets-1.8.0",
      "scheme": "file"
    },
    "relativeLocation": "xabikos.javascriptsnippets-1.8.0",
    "metadata": {
      "installedTimestamp": 1728233001803,
      "pinned": false,
      "source": "gallery",
      "id": "a2cec723-5349-460d-9de9-0fd1f8d3456f",
      "publisherId": "8961c3fe-3ec6-429d-886a-50b5af362a88",
      "publisherDisplayName": "charalampos karypidis",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "usernamehw.remove-empty-lines",
      "uuid": "10a12f01-b6a2-4dc4-89c0-e42c01f02e0e"
    },
    "version": "1.0.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/usernamehw.remove-empty-lines-1.0.1",
      "scheme": "file"
    },
    "relativeLocation": "usernamehw.remove-empty-lines-1.0.1",
    "metadata": {
      "installedTimestamp": 1728233001806,
      "pinned": false,
      "source": "gallery",
      "id": "10a12f01-b6a2-4dc4-89c0-e42c01f02e0e",
      "publisherId": "151820df-5dc5-4c97-8751-eb84643203fa",
      "publisherDisplayName": "Alexander",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "dbaeumer.vscode-eslint",
      "uuid": "583b2b34-2c1e-4634-8c0b-0b82e283ea3a"
    },
    "version": "3.0.10",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/dbaeumer.vscode-eslint-3.0.10",
      "scheme": "file"
    },
    "relativeLocation": "dbaeumer.vscode-eslint-3.0.10",
    "metadata": {
      "installedTimestamp": 1728233001797,
      "pinned": false,
      "source": "gallery",
      "id": "583b2b34-2c1e-4634-8c0b-0b82e283ea3a",
      "publisherId": "29859a75-d81b-4f0e-8578-2c80ecee6f99",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "github.codespaces",
      "uuid": "4023d3e5-c840-4cdd-8b54-51c77548aa3f"
    },
    "version": "1.17.3",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/github.codespaces-1.17.3",
      "scheme": "file"
    },
    "relativeLocation": "github.codespaces-1.17.3",
    "metadata": {
      "installedTimestamp": 1728233001791,
      "pinned": false,
      "source": "gallery",
      "id": "4023d3e5-c840-4cdd-8b54-51c77548aa3f",
      "publisherId": "7c1c19cd-78eb-4dfb-8999-99caf7679002",
      "publisherDisplayName": "GitHub",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "oderwat.indent-rainbow",
      "uuid": "eaa2127d-cb69-4ab9-8505-a60c9ee5f28b"
    },
    "version": "8.3.1",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/oderwat.indent-rainbow-8.3.1",
      "scheme": "file"
    },
    "relativeLocation": "oderwat.indent-rainbow-8.3.1",
    "metadata": {
      "installedTimestamp": 1728233001811,
      "pinned": false,
      "source": "gallery",
      "id": "eaa2127d-cb69-4ab9-8505-a60c9ee5f28b",
      "publisherId": "ac064ae0-224d-4351-9aa4-45ef7bf3ed21",
      "publisherDisplayName": "oderwat",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "shd101wyy.markdown-preview-enhanced",
      "uuid": "3b1db1fc-c7f7-4bd6-9fa4-b499dfa99a8a"
    },
    "version": "0.8.14",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/shd101wyy.markdown-preview-enhanced-0.8.14",
      "scheme": "file"
    },
    "relativeLocation": "shd101wyy.markdown-preview-enhanced-0.8.14",
    "metadata": {
      "installedTimestamp": 1728233001786,
      "pinned": false,
      "source": "gallery",
      "id": "3b1db1fc-c7f7-4bd6-9fa4-b499dfa99a8a",
      "publisherId": "deac4ec9-08f5-4752-aa45-c6f09e1f615d",
      "publisherDisplayName": "Yiyi Wang",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "wallabyjs.console-ninja",
      "uuid": "6a994cdf-21a5-4e80-b0a5-601acdad9bf9"
    },
    "version": "1.0.361",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/wallabyjs.console-ninja-1.0.361",
      "scheme": "file"
    },
    "relativeLocation": "wallabyjs.console-ninja-1.0.361",
    "metadata": {
      "installedTimestamp": 1728233001808,
      "pinned": false,
      "source": "gallery",
      "id": "6a994cdf-21a5-4e80-b0a5-601acdad9bf9",
      "publisherId": "9e43bb4e-4318-4e59-b5c2-df1109a963dd",
      "publisherDisplayName": "Wallaby.js",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "styled-components.vscode-styled-components",
      "uuid": "22a740c5-ec07-4bf0-a58f-1a38aabea310"
    },
    "version": "1.7.8",
    "location": {
      "$mid": 1,
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/styled-components.vscode-styled-components-1.7.8",
      "scheme": "file"
    },
    "relativeLocation": "styled-components.vscode-styled-components-1.7.8",
    "metadata": {
      "installedTimestamp": 1728233001793,
      "pinned": false,
      "source": "gallery",
      "id": "22a740c5-ec07-4bf0-a58f-1a38aabea310",
      "publisherId": "608ef4b3-a3fc-4d26-918a-19c0d8435cf4",
      "publisherDisplayName": "Styled Components",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  },
  {
    "identifier": {
      "id": "ms-vscode.powershell",
      "uuid": "40d39ce9-c381-47a0-80c8-a6661f731eab"
    },
    "version": "2024.2.2",
    "location": {
      "$mid": 1,
      "fsPath": "c:\\Users\\Praveen Singh\\.vscode\\extensions\\ms-vscode.powershell-2024.2.2",
      "_sep": 1,
      "external": "file:///c%3A/Users/Praveen%20Singh/.vscode/extensions/ms-vscode.powershell-2024.2.2",
      "path": "/c:/Users/Praveen Singh/.vscode/extensions/ms-vscode.powershell-2024.2.2",
      "scheme": "file"
    },
    "relativeLocation": "ms-vscode.powershell-2024.2.2",
    "metadata": {
      "installedTimestamp": 1728233001801,
      "pinned": false,
      "source": "gallery",
      "id": "40d39ce9-c381-47a0-80c8-a6661f731eab",
      "publisherId": "5f5636e7-69ed-4afe-b5d6-8d231fb3d3ee",
      "publisherDisplayName": "Microsoft",
      "targetPlatform": "undefined",
      "updated": false,
      "isPreReleaseVersion": false,
      "hasPreReleaseVersion": false
    }
  }
]


```