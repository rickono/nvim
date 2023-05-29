return {
    s({trig="enum", dscr="Expands 'enum' into an enumerate environment"},
    fmta(
    [[
    \begin{enumerate}
    <>
    \end{enumerate}
    ]],
    { i(1) }
    )
    ),
    s({trig="itemi", dscr="Expands 'itemi' into an itemize environment"},
    fmta(
    [[
    \begin{itemize}
    <>
    \end{itemize}
    ]],
    { i(1) }
    )
    ),
    s({trig="begin"},
    fmta(
    [[
    \begin{<>}
    <>
    \end{<>}
    ]],
    {
        i(1),
        i(2),
        rep(1),  -- this node repeats insert node i(1)
    }
    )
    ),
    s({trig="tx", dscr="Expands 'tx' into a tabularx environment"},
    fmta(
    [[
    \begin{center}
        \begin{tabularx}{\textwidth}{<>}
            \hline
            <>
            \hline
            <>
            \hline
        \end{tabularx}
    \end{center}
    ]],
    {
        i(1, "col alignment"),
        i(2),
        i(3)
    }
    )
    )
}
