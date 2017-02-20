# nat-device-network

## Installation
```
weexpack plugin add nat-device-network
```

```
npm install weex-nat --save
```

## Usage

Use in weex file (.we)

```html
<script>
import 'Nat' from 'weex-nat'

// get network status
Nat.network.status((err, ret) => {
    console.log(ret)
})

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
