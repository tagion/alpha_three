<a href="https://tagion.org"><img alt="tagion logo" src="https://github.com/tagion/resources/raw/master/branding/logomark.svg?sanitize=true" alt="tagion.org" height="60"></a>

# Tagion AlphaThree Release

> The network consists of a **gossip protocol,** which is used for data synchronization, the **hashgraph algorithm**, which provides consensus and ordering transactions, and the **sharding** **opportunity,** which lets transactions run in parallel and enhances the speed of the system.

--- 

## Release Notes

This release includes the updated `tagionwave` and `tagionwallet` binaries with CLI. No GUI in this release. 

- Added Name Records according to the [Technical Paper](https://github.com/tagion/resources/raw/master/technical-paper/tagion-technical-paper.pdf);
- Added MDNS Record support in the DART database.
- Added support for `#keys` in the DART database (record hash of a HiBON member);

> Improvement of the Hashgraph has been moved to **AlphaFour**.

## Getting Started

Here we show how to run the local network (multiple nodes on a single machine).

### Run with Docker

To start the local network:

```bash
# TODO: Add flags
docker rm alpha3 &> /dev/null && docker run --name=alpha3 -ti tagion/tagion_alphathree tagionwave --loops 0
```

To create a wallet and do some transfers in the network, attach to a running container:

```bash
docker exec -ti alpha3 bash
```

The `tagionwallet` is already in PATH, feel free to create a wallet.

```bash
tagionwallet -g # Opens an interactive mode
```

To better understand the `tagionwallet`, read the [AlphaOne Guide](https://github.com/tagion/alpha_one#about-tagion-wallet-cli).

# Repository

## Maintainers

- [@cbleser](https://github.com/cbleser)
- [@alexSushko](https://github.com/alexSushko)
- [@vladpazych](https://github.com/vladpazych) (Documentation)

## Questions

For questions and support, please use the [official forum](https://tagion.org/c/development/6) or [Telegram chat](https://t.me/tagionChat). The issue list of this repo is exclusively for bug reports.

## Issues

Please use GitHub to [report a bug](https://github.com/tagion/alpha_one/issues/new?assignees=cbleser%2C+alexSushko&labels=bug&template=bug_report.md&title=) or [request a feature](https://github.com/tagion/alpha_one/issues/new?assignees=alexSushko%2C+cbleser&labels=enhancement&template=feature_request.md&title=).
