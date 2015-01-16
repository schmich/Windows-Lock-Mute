# Windows-Lock-Mute

Automatically mute Windows and put all displays to sleep when you lock your workstation.

The mute state is restored to its previous setting when you unlock your workstation.

## Installing

Clone the repo and run the install script.

```
git clone https://github.com/schmich/Windows-Lock-Mute "%APPDATA%\Windows-Lock-Mute"
"%APPDATA%\Windows-Lock-Mute\install"
```

If you don't have git, [download](https://github.com/schmich/Windows-Lock-Mute/archive/master.zip) the source, copy it to `%APPDATA%\Windows-Lock-Mute`, then run the `install` script.

## Uninstalling

Run the uninstall script and delete the cloned folder.

```
"%APPDATA%\Windows-Lock-Mute\uninstall"
rmdir /s/q "%APPDATA%\Windows-Lock-Mute"
```

## Requirements

- Windows Vista+
- PowerShell

This software was only tested on Windows 7 in a single-user environment. It should work on other Vista+ versions of Windows.

## License

Copyright &copy; 2015 Chris Schmich
<br />
MIT License. See [LICENSE](LICENSE) for details.
