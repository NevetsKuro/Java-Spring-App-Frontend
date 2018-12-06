<h2># MyProjee</h2>
<p>This repository contains a java project using maven build.</p>

<p>     This is a class project i created in 2017 as a final year project. The project aim was to build an e-commerce project using Spring MVC and DevOps. The languages included are HTML, CSS, JavaScript, JAVA, Hibernate, SQL. Framework used are Bootstrap & Spring. Database used is H2 database.</p>
<p>     The Project is divided into two separate folder : Frontend (i.e. this repository) & Backend (i.e. stark1996/projeeBackend). 
     Spring Web MVC is the original web framework built on the Servlet API and has been included in the Spring Framework from the very beginning. The abbreivation 'MVC' stands for Model-View-Controller.</p>
     
<img width="380px" style="margin-left:211px;" src="https://javainterviewpoint-7ac9.kxcdn.com/wp-content/uploads/2015/04/Spring_MVC_Flow_Diagram1.jpg" alt="Spring MVC data flow">

<p>     The Frontend part includes the View and Controllers where the controllers duty is to fetch request from the user and take action accordingly. Here the controller interacts with the backend for retrieving/processing data. The Request is then forwarded to view(HTML pages). </p>
<p>     The Backend part includes all the backend logic such as Data processing, Data Storing, Data Manipulation, Security control, Database authorization. It includes models for manipulating data from the database.</p>
<p>     The Project also has spring security inbuild in it for security reason(user's authorization to pages,etc.)</p>

<strong>Things Required to begin installing the project?</strong>
Needs installing...
<ul>
     <li>netbeans 8.2</li>
     <li>Jdk 1.8</li>
     <li>Glassfish Server(4.1.1) <b>added by default while installing Netbeans</b></li>
     <li>H2 Database (latest) <b>link:</b><a href="http://www.h2database.com/html/download.html"> here</a></li>
     <li>apache-maven-3.5.4 <b>link:</b><a href="https://maven.apache.org/download.cgi"> here</a></li>
     <li>rest of the jar files will be downloaded automatically</li>
</ul>

<strong>How to Setup the project?</strong>
<ul>
<li>First, fork both the projects (i.e. stark1996/projee and stark1996/projeeBackend) to your repo.</li>
<li>Next open Netbeans and clone the projects to your platform</li>
<li>After done, download and install netbeans and use Embedded Server, setup your own setup by making changes in projeeBackend project in src/com/hiberConfig/HiberConfig.java <a href="https://github.com/stark1996/MyprojeeBackend/blob/master/src/main/java/com/hiberConfig/HiberConfig.java">location here</a> and set the same in h2 database config. once connected, switch back to the project. </li>
<li>Right-click both projects and do build with dependencies</li>
<li>And finally run the projee project by <b>Right-Click -> run</b></li>
<li>Once running, the project will redirect yuh to a login page. The table will generate automatically once compiled. For login details, add by adding a new row in users table in h2 database.</li>
</ul>

<p>Any help required, please email at <a href = "mailto: abc@example.com">stevenfernz96@gmail.com</a></p>
    
