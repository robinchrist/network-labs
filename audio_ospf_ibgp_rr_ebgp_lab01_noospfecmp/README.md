This is a little lab to demonstrate OSPF unnumbered with ECMP as IGP + iBGP with Route Reflector + eBGP and BFD on Arista cEOS 4.35.0F

**In this lab, OSPF ECMP is disabled via `maximum-paths 1` under `router ospf 1` to work around a presumed bug in Arista cEOS!**

It was created for my blog article "Audio over IP Networks for Events - An Opinionated Guide, Part 4: BGP as advanced routing protocol for when you need a little bit more spice"
