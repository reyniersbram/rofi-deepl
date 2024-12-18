# rofi-deepl

A [DeepL.com](https://www.deepl.com) client which uses 
[rofi](https://davatorium.github.io/rofi/) for user input.

## Features

- [x] Translate text using the Deepl API
- [ ] ~Multiple options for translation (not supported by API)~
- [ ] Suggest translations as you type

## Requirements

- Software
    - libnotify
    - curl
    - jq
    - xclip
- Extra
    - A DeepL API key, both free and pro edition will work (see 
    [configuration](#configuration)).

## Installation

```sh
git clone https://github.com/reyniersbram/rofi-deepl
cd rofi-deepl
sudo make install
```

## Usage

The following format is used: `SOURCE_LANG:TARGET_LANG:input`. So for example, 
to translate `translator` from English to Dutch, you would write 
`EN:NL:translator`. Translating complete sentences or multiple words is 
supported. When the DeepL API returns a translation, the translation will be 
send as a notification and it will be copied to the clipboard.

When only `input` is provided, the default source and target language will be 
used (see [configuration](#configuration)).

## Configuration

Configuration is done in `.config/rofi-deepl/rofi-deepl.conf`. This is just 
a shell script sourced by the program where some environment variables are set. 
A sample configuration file is provided in `/etc/rofi-deepl.conf` with some 
default options.  
Following options are available:

```sh
DEEPL_API_KEY # Your personal DeepL API key
DEEPL_API_BASE # The base url for the API
ROFI_DEEPL_DATA_DIR # Location of some data files like the history
SRC_LANG_DEFAULT # Default source language
TARGET_LANG_DEFAULT # Default target language
```

> [!NOTE]
> The base url for the free version of the API is https://api-free.deepl.com, 
> for the pro edition https://api.deepl.com is used.

## Acknowledgment

The logo used for notifications is the official DeepL logo. It was extracted 
from the official press brand assets. I am not sure if I am allowed to use it 
like this. Please contact me if you have any feedback on this usage.
