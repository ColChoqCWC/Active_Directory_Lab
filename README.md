# Active_Directory_Lab
<h1>Socket Programming</h1>


<h2>Description</h2>
In this lab, I established an Active Directory environment using Oracle Virtual Box. This setup shows the deployment of a virtual network, which provided me with great practical insight into implementing Active Directory Domain Services (AD DS) within a small company framework. Below is a walkthrough demonstrating the establishment of the domain alongside the integration of Dynamic Host Configuration Protocol (DHCP) services. It also includes implementing Remote Access Service and Network Address Translation (RAS/NAT) services. A key learning aspect of this lab was understanding how clients interact with a Domain Controller via network interface cards (NIC), which gave a great perspective on network communication within an Active Directory infrastructure. 
<br />


<h2>Languages and Utilities Used</h2>

- <b>Oracle Virtual Box</b>
- <b>Power Shell</b>

<h2>Environments Used </h2>

- <b>Windows 10</b>
- <b>Server 2019</b>

<h2>Network Design Followed</h2>
<img src="https://i.imgur.com/3Dm0ctn.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>

<h2>Lab walk-through:</h2>

<p align="center">
Setting up Domain Controller VM and add second adapter to the internal network: <br/>
<img src="https://i.imgur.com/Sp5nPhq.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
In DC VM make sure to click Desktop Experience and Custum install :  <br/>
<img src="https://i.imgur.com/dVJKCuS.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Go to network to change network adaptors names to singify the adaptor pointing to outside internet and the one pointing to internal (_internet_ = external X_internet_ = internal): <br/>
<img src="https://i.imgur.com/8tn0zFk.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/F9UYvw0.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Give X_internet_ NIC a IP address while also renaming the PC to DC: <br/>
<img src="https://i.imgur.com/wb9Nqff.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/ASYrxdc.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Install active Directory domain services: <br/>
<img src="https://i.imgur.com/qcawaZZ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> <br/>
After install go to flag and then promote server to DC and make a domain (mine is ColinDomain.com: <br/>
<img src="https://i.imgur.com/JPiwKg5.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/b6V2c3j.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Go to active directory users and computers in the start menu under administartor tools: <br/>
<img src="https://i.imgur.com/yPlHct2.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Create a new organizattonal unit whihc is just basically a folder called _ADMINS: <br/>
<img src="https://i.imgur.com/UJh116H.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Create a new user and name it yourself for me it is cchoquette: <br/>
<img src="https://i.imgur.com/zugBLDP.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Make that new user account a admin: <br/>
<img src="https://i.imgur.com/MUw8VO1.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Install remote access server / network address translation (RAS/NAT): <br/>
<img src="https://i.imgur.com/sdxtEtj.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/RNmAogz.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Configure routing and remote access in tools and select _internet_ which is pointing to the outside internet: <br/>
<img src="https://i.imgur.com/QSy89FI.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Set up DHCP server on DC to allow for clients to get IP address to access internet: <br/>
  -Installing DHCP <br/>
<img src="https://i.imgur.com/bXhKO3G.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> <br/>
  -Setting up scope which is the range of IP addresses going to be used <br/>
<img src="https://i.imgur.com/sKgMQh5.png" height="80%" width="80%" alt="Disk Sanitization Steps"/><br/>
<img src="https://i.imgur.com/kCLOrjX.png" height="80%" width="80%" alt="Disk Sanitization Steps"/><br/>
<img src="https://i.imgur.com/JlOVtqp.png" height="80%" width="80%" alt="Disk Sanitization Steps"/><br/>
  -Scope created and DHCP finished <br/>
<img src="https://i.imgur.com/ZDBlENv.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Running a Power shell script to add a bunch of users: <br/>
<img src="https://i.imgur.com/T6wSucb.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/kdu46cH.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Make client windows 10 VM: <br/>
<img src="https://i.imgur.com/2i5rgcx.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
rename client system and add it to the domain: <br/>
<img src="https://i.imgur.com/oLvL4gy.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
On the DC there is a lease made in the domain scope and client in the AD users and computers that shows the successful connection from the client system: <br/>
<img src="https://i.imgur.com/6fkqIiI.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
This is another show case fo the successful conection on the clients end: <br/>
<img src="https://i.imgur.com/DkmCbfv.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/1sAQewW.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />

