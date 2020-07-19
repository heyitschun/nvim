# Setup

## Windows
If Vim Plug is not setup yet, open up PowerShell and run:

```
> md ~\AppData\Local\nvim-data\site\autoload
> $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
> (New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim-data\site\autoload\plug.vim"
        
  ) 
)
```

Clone this repository into ***~/AppData/Local/nvim, then run:

```
:PlugInstall
```

