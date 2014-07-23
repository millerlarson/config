```
                                                +--------+             
                                                |        |             
     XXXXXXXXX                                  |        |             
  XXXX       XXX                                +--------+             
XXX            XX                               |                      
X               X      +-------------------------------+-+             
X               X   +--+-------------------------------+               
XX              X   |                           |      |               
 XX             X   |    computer               |      |               
  XXXX        XXX   |       box                 |      |   XXXXX       
     XXXXXXXXXX     |                     XXXXXX|XX XXXXXXXXXX XXXX    
                    |                     X     |      |          XX   
                    |                    XX     |      |           XXX 
                    +--------------------X---------+---+             X 
                                         X      |  |                 XX
       +----------------------+          XX     |  |    +             X
       |                      |           XX    |  |    +-------+>    X
       |       weechat        |         +----------+----+       |     X
       |                      |         |    XXX|               |    XX
       +----------------------+         |      X|XXX            |    X 
                                        |       |  XXXXXXXXXX   | XXX  
                                        |       |           XXXX|XX    
                                        +-------+               |
                                                                |
                                                         git  <-+--->  config files
```

# Dotfiles and scripts

Simple collection of configs and scripts to help manage configurations that are important to me.


## Things to love about...

### zsh
* Inline man pages with `Esc`+`h`
* Smarter history search `Ctrl`+`r`
  * Supports regex `^rm`
  * Scroll matching commands `<comand>`+`Up/Down`
* Smart tab completion

#### oh-my-zsh
Easily configure:
* Themes
  * Git aware prompts
* Modules
  * Smart-er tab completion
 
### weechat
It is like irssi but easier!
* Configurable inside the client
* Plugins
  * Aspell
    * In-line spellcheck
  * Scripts
    * bufers.pl (server and chatlist buffer)
    * iset.pl (interactive plugin editor)
    * screen_away.py (sets away on detach)
* Buffers
* Logs
* Colors

### tmux
Like screen? Try tmux. Period.
