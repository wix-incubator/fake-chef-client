fake-chef-client Cookbook
========================
The fake-chef-client cookbook performs the following:

1. Configures additional IP address on a specified interface
2. Adding extra chef-client configuration files for each of the configured 'nodes'
3. Running chef-client with the extra config.

As a result - all those nodes creates new "fake" chef nodes on chef-server

Requirements
------------

The FQDN of the fake node you are adding should be resolvable to a IP address. This address will be added to a virtual interface on the master machine.


Attributes
----------

#### fake-chef-client::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['fake-chef-client']['nodes']</tt></td>
    <td>Array</td>
    <td>The list of virtual node FQDNs to install</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['fake-chef-client']['interface']</tt></td>
    <td>Array</td>
    <td>The interface to add the additional IPs to</td>
    <td><tt>eth0</tt></td>
  </tr>
  <tr>
    <td><tt>['fake-chef-client']['netmask']</tt></td>
    <td>Array</td>
    <td>Netmask to use for the IP</td>
    <td><tt>"255.255.255.0"</tt></td>
  </tr>
</table>

Usage
-----
#### fake-chef-client::default

Just include `fake-chef-client` in your master node's `run_list`, after setting the attributes:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[fake-chef-client]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
 Authors: Wix.com

 License: Apache 2.0
