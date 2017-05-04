# shadowsocks Cookbook

Install shadowsocks on your server.

This cookbook will create a system service "ssserver", while the configuration file is in `/etc/shadowsocks.json`.


## Requirements

### Platforms

- Ubuntu
- Debian

### Chef

- Chef 12.0 or later

### Cookbooks

- `poise-service` - for create a system service

## Attributes

### shadowsocks::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['shadowsocks']['server_port']</tt></td>
    <td>Integer</td>
    <td>shadowsocks server port</td>
    <td><tt>8388</tt></td>
  </tr>
  <tr>
    <td><tt>['shadowsocks']['method']</tt></td>
    <td>String</td>
    <td>method</td>
    <td><tt>aes-256-cfb</tt></td>
  </tr>
  <tr>
    <td><tt>['shadowsocks']['password']</tt></td>
    <td>String</td>
    <td>password</td>
    <td><tt>pass</tt></td>
  </tr>
</table>

## Usage

### shadowsocks::default

Just include `shadowsocks` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[shadowsocks]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

- Authors:: jccode

