# kubectl proxy-port-forward

Start socat with proxy to remote host in Kubernetes and forward one or more local ports to it.

## Installation

Using curl:

```bash
curl -LO https://github.com/kvaps/kubectl-proxy-port-forward/raw/master/kubectl-proxy_port_forward
chmod +x ./kubectl-proxy_port_forward
sudo mv ./kubectl-proxy_port_forward /usr/local/bin/kubectl-proxy_port_forward
```

## Usage

```bash
kubectl proxy-port-forward <local_port>:<remote_host>:<remote_port> [<local_port>:<remote_host>:<remote_port>]
```

## Example

```bash
kubectl proxy-port-forward 8443:google.com:443 6443:kubernetes.default.svc:443
```
