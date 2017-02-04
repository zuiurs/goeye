# goeye

goeye is a process checking tool.  
This is not a daemon, so should be used with automatic execution tool such as Cron, Windows Task Scheduler, and so on.

## Usage

Give some file paths you wanna check.

```
Usage: goeye FILE...
```

for example,

```
goeye "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"
```

## Installation

You can use `go get`.

```
go get -u github.com/zuiurs/goeye
```

## License

MIT
