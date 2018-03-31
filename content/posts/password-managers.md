---
title: "Password Managers"
date: 2018-03-30T23:10:57-07:00
type: post
draft: true
tags: ["security", "password-managers"]
---

<style>
img.pm-logo {
    height: 32px;
    border-radius: 0;
}
img.pm-logo.square {
    width: 32px;
}

td.fm.yes {
    background-color: #ddffdd;
}

td.fm.no {
    background-color: #ffdddd;
}

td.fm.partial {
    background-color: #ffffdd;
}
.fm a:after {
    content: ""
}
</style>

## Feature Matrix

<table class="fm">
  <thead>
    <tr>
      <th></th>
      <th><img class="pm-logo square" src="/images/password-managers/1password.svg"></img>1Password </th>
      <th><img class="pm-logo square" src="/images/password-managers/enpass.svg"></img>&nbsp;&nbsp;&nbsp;&nbsp;Enpass&nbsp;&nbsp;&nbsp;&nbsp; </th>
      <th><img class="pm-logo" style="height: 32px" src="/images/password-managers/lastpass.svg"></img>LastPass </th>
      <th><img class="pm-logo square" src="/images/password-managers/keepassxc.png"></img>KeepassXC </th>
      <th><img class="pm-logo square" src="/images/password-managers/bitwarden.png"></img>BitWarden </th>
      <th><img class="pm-logo square" src="/images/password-managers/dashlane.png"></img>Dashlane </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Free</strong></td>
      <td class="fm no"> no </td>
      <td class="fm partial"> yes <sup><a href="#note2">[2]</a></sup> </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm partial"> yes <sup><a href="#note6">[6]</a></sup> </td>
      <td class="fm no"> no <sup><a href="#note11">[11]</a></sup> </td>
    </tr>
    <tr>
      <td><strong>Open Source</strong></td> 
      <td class="fm no"> no </td>
      <td class="fm no"> no </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm no"> no </td>
    </tr>
    <tr>
      <td><strong>Strong Encryption</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>3rd Party Audited</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm no"> no <sup><a href="#note3">[3]</a></sup> </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm no"> no <sup><a href="#note7">[7]</a></sup> </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Windows</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm partial"> yes <sup><a href="#note8">[8]</a></sup> </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Mac</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Linux</strong></td> 
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Mobile</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no <sup><a href="#note4">[4]</a></sup> </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Firefox</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Chrome</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>CLI</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no <sup><a href="#note9">[9]</a></sup> </td>
      <td class="fm no"> no </td>
    </tr>
    <tr>
      <td><strong>Local storage</strong></td> 
      <td class="fm partial"> yes <sup><a href="#note1">[1]</a></sup> </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no <sup><a href="#note10">[10]</a></sup> </td>
      <td class="fm no"> no </td>
    </tr>
    <tr>
      <td><strong>3rd party cloud sync</strong></td> 
      <td class="fm partial"> yes <sup><a href="#note1">[1]</a></sup> </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm partial"> yes <sup><a href="#note5">[5]</a></sup> </td>
      <td class="fm no"> no <sup><a href="#note10">[10]</a></sup> </td>
      <td class="fm no"> no </td>
    </tr>
    <tr>
      <td><strong>Proprietary cloud sync</strong></td> 
      <td class="fm partial"> yes <sup><a href="#note1">[1]</a></sup> </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Password Generator</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Password Auditor</strong></td> 
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
    </tr>
    <tr>
      <td><strong>Clipboard Management</strong></td> 
      <td class="fm yes"> yes </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm yes"> yes </td>
      <td class="fm no"> no </td>
      <td class="fm no"> no </td>
    </tr>
  </tbody>
</table>

## Feature Matrix Notes

<div class="fm">
  <p><a name="note1">[1]</a> 1Password 4 still has local vault support, but the latest versions of 1Password are a paid subscription model.<br/></p>
  <p>
    <a name="note2">[2]</a> All Enpass clients except for the mobile client are free.<br/>
  </p>
  <p>
    <a name="note3">[3]</a> Users <a href="https://discussion.enpass.io/index.php?/topic/404-security-audit">asked for an audit</a> back in 2016, and the developers say have it on the roadmap. It's still not done as of this writing (31 March 2018), claiming that they are waiting until the next major version release.<br/>
  </p>
  <p>
    <a name="note4">[4]</a> There is no official KeePassXC mobile solution, but they list some 3rd party integrations on their website.<br/>
  </p>
  <p>
    <a name="note5">[5]</a> The database is simply a file, so it can be synced like one.<br/>
  </p>
  <p>
    <a name="note6">[6]</a> Only the proprietary cloud-integrated version is free. Self-hosted is not free.<br/>
  </p>
  <p>
    <a name="note7">[7]</a> Users <a href="https://github.com/bitwarden/core/issues/27">asked for an audit</a> in early 2017. It's not done, likely due to cost issues. However, the project does participate in initiatives like HackerOne<br/>
  </p>
  <p>
    <a name="note8">[8]</a> This is an Electron + Angular app.<br/>
  </p>
  <p>
    <a name="note9">[9]</a> There is no BitWarden CLI, but it appears to be on the roadmap, without an ETA for completion.<br/>
  </p>
  <p>
    <a name="note10">[10]</a> Some of Bitwarden's paid plans offer optional self-hosting.<br/>
  </p>
  <p>
    <a name="note11">[11]</a> Dashlane is free for 1 device, but syncing multiple is not free.
  </p>
</div>

Encryption
---

#### 1Password

https://support.1password.com/1password-security/#encryption
* 256-bit AES
* Audited

#### Enpass

https://www.enpass.io/security/
* 256-bit AES
* PBKDF2 (24,000 rounds)
* NOT audited

#### LastPass

https://lastpass.com/support.php?cmd=showfaq&id=1626
* 256-bit AES
* PBDKF2 SHA-256 (5,000 rounds)
* salted hashes (they only support cloud storage)
* Audited

#### KeePassXC

https://keepassxc.org/docs/
* 256-bit AES (or Twofish block cipher)
* Supports additional key file
* NOT audited

#### BitWarden

https://help.bitwarden.com/article/what-encryption-is-used/
* 256-bit AES
* PBKDF2
* salted hashes for cloud
* NOT audited

#### Dashlane

(pdf) https://www.dashlane.com/download/Dashlane_SecurityWhitePaper_December2017.pdf
* 256-bit AES
* PBKDF2 SHA1 (10,000+ iterations)
* salted hashes for cloud
* Audited

Unique and Interesting Features
---

Overall, Dashlane seems to have the most bells and whistles. For example, Dashlane has functionality to change passwords for various popular websites in one click. This seems interesting, because it allows simple (perhaps even automated) password rotation. It also has a "security score" which checks for password strength, reuse, age, and inclusion in security breaches. These extra features differentiate Dashlane from a generic secret store, and work together towards justifying paying a subscription fee for use on multiple devices.

Wishlist
---

* Audit log of password use/reveal/autofill
* Username/email generator

