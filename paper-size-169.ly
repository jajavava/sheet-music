#(set! paper-alist (cons '("video" . (cons (* 21 cm) (* 11.8125 cm))) paper-alist)) % You have to define a 16:9 paper size

\header {
  title = "Untitled"
  composer = "Composer"
}


\book { % You have to put the score in a book block

    \paper { #(set-paper-size "video") } % You have to use the 16:9 paper size previously defined

    \markup { \column { \vspace #5 \fill-line { \fontsize #18.0 "TITLE" } } } % You have to create a title page with no music

    \pageBreak % You have to start your music on page two

    \score  {
        \new Staff {
            \relative c' {
                \time 4/4 % You have to use \time ...
                \tempo 4 = 90 % You have to use \tempo ...
                c4 d e f g a b a8 b c2 r4 c4 b a g f e d d d8 g c,1
                \bar "|."
            }
        }
        \layout{}
        \midi{}
    }
}
