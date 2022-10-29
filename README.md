<div id="top"></div>

<div align="center">
  <a href="https://basu.ac.ir/">
    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/4/49/Bu_Ali_Sina_University.svg/1200px-Bu_Ali_Sina_University.svg.png" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">ACM_BASU</h3>
  <p align="center">
    ACM Contest OS config
    <br />
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>📗 <b>Table of Contents</b></summary>
  <ol>
    <li>
      <a href="#🔰-about-the-project"> About The Project</a>
    </li>
    <li><a href="#⚡-how-it-works">How it Works</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## 🔰 About The Project
- Scripts and config for Customized XUbuntu 22.04.

<p align="right">(<a href="#top">back to top</a>)</p>

## ⚡ How It Works
- Install Cubic
```bash
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E
sudo apt update && sudo apt install cubic
```
- Run cubic and attach XUbuntu
- Download all the tar.gz files for `Eclipse`, `Clion`, `IntelliJ`, `Pycharm` from the official website and put them in the same directory
- Change the variable `PKG` path to the directory, in `install.sh`
- run `bash ./install.sh`

<p align="right">(<a href="#top">back to top</a>)</p>

### Author
- [Mehrdad Shahidi](https://github.com/CyberKatze)
