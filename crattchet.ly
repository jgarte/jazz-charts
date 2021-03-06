\version "2.12.0"

\include "header.ly"

\header {
    title = "Dr. Crattchet's Ratchet"
    pagenumber = "no"
}

melody = \relative c''' {
  \time 4/4
  \key a \minor

  \mark "4x"
  \repeat volta 4 {
    r4 a g2
    g4. f8~ f2
    r8 d c a c4 d
    d8 c a a r g r a
  } % repeat

  r1
  r1
  r1
  r2 r8 g' a a
  r2 r8 g e g
  r2 r8 a c c
  d4 c gis8 a gis g
  fis dis d e g4 a8 a
  \repeat volta 2 {
    r2 r8 g e g
    \mark "Repeat for solos"
    r2 r8 g a a~
    a4 g8 e dis e dis e
    d c a a r c d e~ \bar "||"
    e4 d8 c d4 c8 a
    c a g a r e' r e~
    e4 d8 c d4 c8 a
    c a g a r g a4
    r1
    r1
    r1
    r1
    e'4 d8 c d4 c8 a
    c a g a r e' r es~
    es4 d8 c d4 c8 a
    c a g a r gis r a
    r1
    r
    r
    r
  }

  \repeat volta 2 {
    \mark "10x"
    \comp #16
  }

  \repeat volta 3 {
    r4 d c2
    \mark "3x"
    c4. bes8~ bes2
    r8 g f d f4 g
    g8 f d d r c r d
  } % repeat
} % notes

harmony = \chords {
  \set chordChanges = ##t

  a1:min7
  a4.:min7 g8:7 s2
  fis2:min7.5- f:maj7
  e4.:min7 a8:min7 s e:min7 s a:min7

  a1:min7
  a:min7
  a:min7
  a:min7
  a:min7
  a:min7
  a:min7
  a:min7
  a:min7
  a:min7
  a2:min7 b:min7
  a:min7 g:maj7
  fis1:min7.5-
  fis:min7.5-
  f:maj7
  f:maj7
  a:min7
  a:min7
  a2:min7 b:min7
  a:min7 g:maj7
  fis1:min7.5-
  fis:min7.5-
  f:7
  e:7
  a:min7
  a:min7
  a:min7
  a:min7

  d:min7.5-
  e:maj7
  e:min7
  es:min7

  d1:min7
  d4.:min7 c8:7 s2
  b2:min7.5- bes:maj7
  a4.:min7 d8:min7 s a:min7 s d:min7
} % chords

\include "footer.ly"
