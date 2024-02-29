<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<h1 align="center">🌐 Employee Management App! 🌐</h1>
<br />
<div align="center">
  <a href="https://github.com/NandaMonroe/E-Smart">
    <img src="./e-smart-demo.gif" alt="Gif Preview">
  </a>


  <p align="center">
    <br />
    <a href="https://github.com/NandaMonroe/E-Smart">View Demo</a>
    ·
    <a href="https://github.com/NandaMonroe/E-Smart/issues">Report Bug</a>
    ·
    <a href="https://github.com/NandaMonroe/E-Smart/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
## :ledger: Table of Contents
<ol>
  <li><a href="#description">Description</a></li>
  <li><a href="#approach">Approach</a></li>
  <li><a href="#built-with">Built With</a></li>
  <li><a href="#getting-started">Getting Started</a></li>
  <li><a href="#enviroment-variables">Enviroment Variables</a></li>
  <li><a href="#status">Status</a></li>
  <li><a href="#contributing">Contributing</a></li>
  <li><a href="#license">License</a></li>
</ol>




<!-- DESCRIPTION - Give a brief description of the project. What was the reason or motivation behind the creation of the project. -->
## :beginner: DESCRIPTION


E-Smart is designed to streamline communication within your workplace by providing an efficient platform for HR and employees to easily access and exchange information about their colleagues. With this system, employees can navigate through different departments, identify supervisors, and view details such as job titles, department affiliations, email addresses, dates of birth, and hire dates for all staff members. Clicking on an individual employee redirects to their profile, where their is a comprehensive overview, including a Fun Fact 😆.

Here's how it operates:
- When a new employee joins, the HR (ADMIN) creates a profile for them, assigning a company number and generating a temporary password.
- Upon their initial login, employees can personalize their profiles by updating passwords, adding profile pictures, and sharing fun facts.
- They also have the capability to check both their own and their co-workers' schedules.
- Need to coordinate a schedule change? Simply message the coworker and request a "change of schedule."
- The HR then reviews and approves or denies the request, sending confirmation messages to both parties.

Note: Administrative functions, such as adding departments, employees, and updating schedules, are exclusively accessible by the ADMIN.

E-Smart enhances workplace connectivity and efficiency, fostering a more cohesive and informed professional environment.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- TECHNOLOGIES - List the tools and technologies used to build the project. -->
## ⚙️🔧 BUILT WITH
<br/>

<div style="text-align: center;">

![JAVA](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![SPRING](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![SPRING SECURITY](https://img.shields.io/badge/Spring_Security-6DB33F?style=for-the-badge&logo=Spring-Security&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![BOOTSTRAP](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)

</div>


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- SETTUP/INSTALATION - Concisely and clearly, list the steps needed to run the project. -->
## :zap: GETTING STARTED

To clone and run this application, you'll need [Git](https://git-scm.com) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/NandaMonroe/E-Smart

# Go into the repository
$ cd E-Smart

# Build Maven Artifact
$ javac JavaProjectApplication

# Run the app
$ java com.nandamonroe.javaproject
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- STATUS - Mention the status of the project. That is whether the project is completed or in progress. Show its todo list -->
## 📈 STATUS

The app is still a work in progress. There are a few adjustment on the styling to do. The "View Schedule" & "Update Schedule" page still isn't built.

- [ ] Fix styling
- [ ] Create "View Schedule" page (front-end & back-end)
- [ ] Create "Update Schedule" page (front-end & back-end)
- [ ] Customize Employee Profile Page
    - [ ] Scale between cards
    - [ ] Profile picture ratio
    - [ ] Add a 'edit' button for user
    - [ ] Add message button

See the [open issues](https://github.com/NandaMonroe/E-Smart/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING - Give the instruction about how to contribute to the project-->
## :fire: CONTRIBUTING

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## :lock: LICENSE

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
