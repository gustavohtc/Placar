using Placar
using Documenter

DocMeta.setdocmeta!(Placar, :DocTestSetup, :(using Placar); recursive=true)

makedocs(;
    modules=[Placar],
    authors="Gustavo Henrique T Cardoso <ghtcardoso@icloud.com> and contributors",
    repo="https://github.com/gustavohtc/Placar.jl/blob/{commit}{path}#{line}",
    sitename="Placar.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gustavohtc.github.io/Placar.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gustavohtc/Placar.jl",
    devbranch="master",
)
