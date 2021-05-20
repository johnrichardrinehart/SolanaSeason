# SolanaSeason

## What

We're going to build a data visualisation tool built on top of [Solana](solana.com) (a proof-of-history blockchain) and [Project Serum](https://projectserum.com/) (a DeFi exchange built using the Solana blockchain).

The idea is something like:
1. Users define an SQL query (using a web interface) over the data (that we make available to them)
1. Users select how to take the return rows and columns and represent those using charts
2. Users share charts with the community (free) or make them privately (public)

This is effectively a clone of [Dune Analytics](https://duneanalytics.com/) which was founded in 2019, received 2 million in seed funding, and is looking to hire 5 people in addition to the 2 that run that operation, currently.

Some of their code [is public](https://github.com/duneanalytics), so we might as well fork what we can.

Maybe, but not definitely, Dune Analytics is self-hosting [Redash](http://github.com/getredash/redash.git) - the [cororate site](https://redash.io/) offers subscriptions and a managed service.

This idea was taken from the [Solana Season](https://github.com/solana-labs/solana-season/blob/master/ideas.md) GitHub repository. In case the repository goes away, the current specification is this:

<blockquote>
  
Solana Data Viz Idea
A web-based tool through which any user can query all data on the Solana blockchain by using SQL queries. Pre-populated databases with parsed data from Solana blocks. This can all be built on Redash just like Dune (https://redash.io/)

Any user would be able to write a query

free users would have to open source their queries so others could work
paid users would have the ability to write queries privately
Automatic hourly updates on the most viewed queries and charts

Paid users could hook an API to any publicly available query and get results
Dashboarding functionality

Curated queries shared in a visualized form
The team would write several popularly requested queries to launch this product to expedite the kick-off
Charts that should be launched with
Number of daily transactions on Solana
Number of daily active Solana addresses
Number of new daily Solana addresses
Daily volume of SOL transfers
Daily fees of all SOL/SPL transfers
Daily median USD cost of SOL&SPL transfer
Daily USD revenue of Solana stakers
Daily Solana addresses with balance over $X ($1k, $10k, $100k, $1M, $10M
Total monthly DEX trading volume on Solana (with DEX splits - Serum&Raydium etc.)
Number of monthly unique liquidity providers on Serum
Number of monthly unique trading addresses on Serum
Number of monthly trades on Serum
Total number of unique addresses interacting with Solana DeFi apps with splits by each project
Total stacked daily TVL of all Solana DeFi projects
Daily outstanding debt of Jet Protocol
Total daily supply of stablecoins issued on Solana
  
</blockquote>

## Who

1. John Rinehart
* Project coordinator
* Infrastructure manager (bill payer)
* Website/domain manager
* Redash setter-upper

2. Justin Restivo
* Core blockchain data (from Solana)

3. Kunal Khamar
* Project Serum DeFi data

## How

We'll use GitHub issues to track features and responsibilities.
We'll use a private Discord server for communication.
We'll divide the responsibility for the project into 3 parts (see above).
We'll have ad-hoc meetings as necessary.

## Where

IP: 45.76.166.33
Username: atkuila
Password (for sudo ops): atkuila

`~/.ssh/config` entry:

```config
Host atkuila
     HostName server1.cyberciti.biz
     User 45.76.166.33
     IdentityFile ~/.ssh/id_rsa.pub # You may need to change this line
```

## When

Until [June 7, 2021](https://solana.com/solanaszn).


## Why

It would be fun to build something and there's a ton of prize money. Maybe, maybe if we get some money out of this we can consider expanding.
