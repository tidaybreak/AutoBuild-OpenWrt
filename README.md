# AutoBuild-OpenWrt

Build OpenWrt firware [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) using GitHub Actions  
Hereby thank P3TERX for his amazing job: https://github.com/P3TERX/Actions-OpenWrt/

## Usage

- Sign up for [GitHub Actions](https://github.com/features/actions/signup)
- Fork [this GitHub repository](https://github.com/esirplayground/AutoBuild-OpenWrt)
- Click [.github/workflows] folder on the top of repo and you could see few workflow files, Each for one particular architecture(device).
- Edit the workflow file you desire，uncomment push section 3 lines together and submit the commit.(Other 2 methods wait you to discover)
- The build starts automatically. Progress can be viewed on the Actions page.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.
- Default Web Admin IP: `192.168.5.1`, username `root`，password `password`

[For the details please visit my Y2B Channel (in Chinese) | 视频教程](https://www.youtube.com/c/esirplayground)

```

1.frpc restart间隔要大些
2.内网走代理 要取消这个 iptables -t nat -D SS_SPEC_WAN_FW -d 192.168.0.0/16 -j RETURN
  ./usr/bin/ssr-rules 改这里的192.168.0.0/16
3.用frpc远程时appfilter时开不了， /usr/lib/lua/luci/model/cbi/appfilter:get_hostname_by_mac 里面去掉print
4./usr/lib/lua/luci/model/cbi/bandwidthd.lua 链接<a target='_blank' href='/bandwidthd'>bandwidthd</a>

```
