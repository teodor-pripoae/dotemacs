(require-package 'helm-spotify)
(require 'helm-spotify)

;;;###autoload
(defun spotify-play-pause ()
  "Pause music in spotify"
  (interactive)
  (shell-command (format "osascript -e 'tell application %S to playpause '" "Spotify")))

;;;###autoload
(defun spotify-prev ()
  "Play previous song in spotify"
  (interactive)
  (shell-command (format "osascript -e 'tell application %S to previous track '" "Spotify")))

;;;###autoload
(defun spotify-next ()
  "Play next song in spotify"
  (interactive)
  (shell-command (format "osascript -e 'tell application %S to next track '" "Spotify")))


(global-set-key (kbd "<f7>") 'spotify-prev)
(global-set-key (kbd "<f8>") 'spotify-play-pause)
(global-set-key (kbd "<f9>") 'spotify-next)

(provide 'init-music)
