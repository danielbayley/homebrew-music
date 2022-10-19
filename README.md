<img src="icon.svg" width="24%" align="right">

_[Homebrew]_ Music
==================
Homebrew _[tap]_ for music software, such as _[Native Instruments][NI]_ synths  
and presets, for use in a _[DAW]_ like _[Ableton Live][live]_.

Install
-------
~~~ sh
brew tap danielbayley/music
brew install --cask #cask
brew install --formula #formulae
~~~

[Contribute][guide]
-------------------
~~~ sh
brew tap danielbayley/pipeline
git config core.hooksPath .github/hooks
~~~
and follow the contribution [guide], or copy and adapt an [existing] _[Cask]_.

License
-------
[MIT] © [Daniel Bayley]

[MIT]:            LICENSE.md
[Daniel Bayley]:  https://github.com/danielbayley

[homebrew]:       https://brew.sh
[tap]:            https://docs.brew.sh/Taps
[cask]:           https://docs.brew.sh/Cask-Cookbook

[guide]:          https://docs.brew.sh/Adding-Software-to-Homebrew#writing-the-cask
[existing]:       Casks

[NI]:             https://native-instruments.com
[live]:           https://ableton.com/live
[DAW]:            https://wikipedia.org/wiki/Digital_audio_workstation
