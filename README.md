# kubectl proxy-port-forward

Start socat with proxy to remote host in Kubernetes and forward one or more local ports to it.

## Installation

using [krew](https://krew.sigs.k8s.io/):

<pre>
kubectl krew index add kvaps <a href="https://github.com/kvaps/krew-index">https://github.com/kvaps/krew-index</a>
kubectl krew install kvaps/proxy-port-forward
</pre>

or using curl:

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
curl -k https://localhost:6443
```
