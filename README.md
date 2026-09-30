# Compilation time benchmarks

This repository contains synthetic benchmarks of compilation and build times
across various programming languages with the goal to publicly quantify
performance claims.

Median of 11 runs.

## Language results

| Language                 | Seconds |
| ------------------------ | ------- |
| C#                       | 0.929   |
| Elixir                   | 0.509   |
| Elm                      | 0.510   |
| Erlang                   | 0.406   |
| Gleam v1.17.0 Erlang     | 0.434   |
| Gleam v1.19.0 Erlang     | 0.342   |
| Gleam v1.19.0 JavaScript | 0.188   |
| Go                       | 0.195   |
| Java                     | 0.463   |
| Rust                     | 0.733   |
| Typescript 6             | 1.412   |
| Typescript 7             | 0.965   |

Versions: Java temurin-25.0.4+101.0.LTS, Gradle 9.7.1, Cabal 3.16.1.0, Ghc
9.10.3, Dotnet 10.0.400, Rebar 3.27.0, Erlang 29.0.6, Elixir 1.20.4-otp-29, Go
1.27.1, OCaml 5.5.1
