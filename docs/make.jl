using NonlinearSchrodinger
using Documenter

makedocs(;
    modules=[NonlinearSchrodinger],
    authors="Omar Ashour",
    repo="https://github.com/oashour/NonlinearSchrodinger.jl/blob/{commit}{path}#L{line}",
    sitename="NonlinearSchrodinger.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="http://oashour.github.io",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Theory" => [
            "Simulations" => "man/simulations.md",
            "Darboux Transformations" =>  "man/dt.md"],
        "Examples" => [
            "Simulation Examples" => "man/sim_examples.md",
            "DT Examples" =>  "man/dt_examples.md"],
        "Visualization" => "man/visualization.md",
        "Library" => [
            "Public API" => "public.md",
            "Internals" =>  "private.md",
            "Integrators" => "man/integrators.md"]
    ],
)

deploydocs(;
    repo="github.com/oashour/NonlinearSchrodinger.jl",
    branch = "gh-pages",
    devbranch = "master",
    devurl = "dev"
    #versions = ["stable" => "v^", "v#.#", devurl => devurl],
)
