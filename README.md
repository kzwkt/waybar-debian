# labwc-debian
labwc on debian stable


```

https://github.com/labwc/labwc/tags
| labwc Ver | wlroots   | 
|------------|----------|
| 0.8.[0-3]  | >=0.18.0 | 4    
| 0.7.[0-4]  | >=0.17.0 | 5  
| 0.6.[0-6]  | >=0.16.0 | 7
| 0.5.[0-3]  | >=0.15.0 |   
 

https://tracker.debian.org/pkg/wlroots

|  Suite   | wlroots    |
|----------|------------|
| Stable   | 0.15.1-6   |
| Testing  | 0.18.2-3   |
| Unstable | 0.18.2-3   |


we can go with labwc 0.5.1 due to wlroots requirement of >=0.15.0

we could build newer version with  wlwroots-wrap but it could have wayland-dev, mesa and other insane deps 

https://github.com/labwc/labwc/archive/refs/tags/0.5.3.zip


https://github.com/labwc/labwc/tags

https://github.com/labwc/labwc/tree/0.5.3

https://tracker.debian.org/media/packages/l/labwc/control-0.8.3-1

```


# use it 
```
sudo  apt install libwlroots10
mv ~/Downloads/labwc ~/.bin/labwc

```

