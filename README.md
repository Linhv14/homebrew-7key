# 7key Homebrew tap

The [7key](https://7key.online) CLI: give your terminal, CI and AI agents the
secrets of a project without showing the values.

```bash
brew install linhv14/7key/sevenkey
7key login                       # or: 7key login --server https://<your server>
7key link                        # once per folder
7key run -- npm run dev
```

The formula is `sevenkey` because formula names cannot start with a digit; it
installs the `7key` command. Also on npm: `npm install -g @7key/cli`.

Documentation: [Use the CLI](https://github.com/Linhv14/personal-vault/blob/main/docs/how-to/use-the-cli.md).
This repository is generated from
[Linhv14/personal-vault](https://github.com/Linhv14/personal-vault) on each
release; report issues there. Licensed under the GNU AGPL-3.0.
