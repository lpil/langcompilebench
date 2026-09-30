# Compilation time benchmarks

This repository contains synthetic benchmarks of compilation and build times
across various programming languages with the goal to publicly quantify
performance claims.

Median of 11 runs.

## Language results

| Language           | Seconds |
| ------------------ | ------- |
| Gleam JavaScript   | 0.174   |
| Go                 | 0.209   |
| Gleam Erlang       | 0.380   |
| Erlang             | 0.415   |
| Elm                | 0.483   |
| Java               | 0.483   |
| Elixir             | 0.516   |
| Rust               | 0.766   |
| TypeScript ts7     | 0.924   |
| C#                 | 0.945   |
| TypeScript ts6     | 1.432   |

Versions: Java temurin-25.0.4+101.0.LTS, Gradle 9.7.1, Cabal 3.16.1.0, Ghc
9.10.3, Dotnet 10.0.400, Rebar 3.27.0, Erlang 29.0.6, Elixir 1.20.4-otp-29, Go
1.27.1, OCaml 5.5.1, Gleam 1.19.0.

## Gleam (Erlang) results

| Gleam version  | Seconds |
| -------------- | ------- |
| 1.1.0          | 0.889   |
| 1.2.0          | 0.894   |
| 1.3.0          | 0.891   |
| 1.4.0          | 0.511   |
| 1.5.0          | 0.541   |
| 1.6.0          | 0.550   |
| 1.7.0          | 0.555   |
| 1.8.0          | 0.542   |
| 1.9.0          | 0.541   |
| 1.10.0         | 0.558   |
| 1.11.0         | 0.550   |
| 1.12.0         | 0.568   |
| 1.13.0         | 0.595   |
| 1.14.0         | 0.590   |
| 1.15.0         | 0.566   |
| 1.16.0         | 0.552   |
| 1.17.0         | 0.554   |
| 1.18.0         | 0.342   |
| 1.19.0         | 0.372   |

## Gleam (JavaScript) results

| Gleam version  | Seconds |
| -------------- | ------- |
   1.1.0     0.582   
   1.2.0     0.577   
   1.3.0     0.569   
   1.4.0     0.200   
   1.5.0     0.197   
   1.6.0     0.193   
   1.7.0     0.195   
   1.8.0     0.196   
   1.9.0     0.196   
   1.10.0    0.214   
   1.11.0    0.211   
   1.12.0    0.216   
   1.13.0    0.241   
   1.14.0    0.239   
   1.15.0    0.216   
   1.16.0    0.208   
   1.17.0    0.209   
   1.18.0    0.186   
   system    0.099
