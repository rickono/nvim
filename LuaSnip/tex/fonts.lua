return {
-- Combining text and insert nodes to create basic LaTeX commands
s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
  {
    t("\\texttt{"), -- remember: backslashes need to be escaped
    i(1),
    t("}"),
  }
),
-- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
-- there is a much better, human-readable solution: ls.fmt, described shortly.
  s({trig="bf", dscr="Expands 'bf' into '\textbf{}'"},
  fmta("\\textbf{<>}", { i(1) })),
  s({trig="em", dscr="Expands 'em' intp '\\emph{}'"},
  fmta("\\emph{<>}", { i(1) }))
}
