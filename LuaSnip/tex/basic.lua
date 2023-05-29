local tex_utils = {}
tex_utils.in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex_utils.in_text = function()
  return not tex_utils.in_mathzone()
end
tex_utils.in_itemize = function()  -- itemize environment detection
    return tex_utils.in_env('itemize')
end

return {
    s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
        fmta(
            "\\texttt{<>}",
            { i(1) }
        )
    ),
    s({trig="sec", dscr="Expands 'sec' into '\\section{}'"},
        fmta(
            "\\section{<>}",
            { i(1) }
        )
    ),
    s({trig="subs", dscr="Expands 'subs' into '\\subsection{}'"},
        fmta(
            "\\subsection{<>}",
            { i(1) }
        )
    ),
    s({trig="subsub", dscr="Expands 'subsub' into '\\subsubsection{}'"},
        fmta(
            "\\subsubsection{<>}",
            { i(1) }
        )
    ),
    s({trig="it", dscr="Expands 'it' into '\\item'"},
        { t("\\item") },
        { condition = tex_utils.in_mathzone }
    ),
    s({trig="par", dscr="Expands 'par' into '\\paragraph{}'"},
        fmta("\\paragraph{<>}", i(1))
    ),
    s({trig="chk", dscr="Expands 'chk' into \\checkmark"}, { t("\\checkmark")}),
    s({trig="nf"},
        fmta("\\nicefrac{<>}{<>}", { i(1), i(2) })
    )
}

