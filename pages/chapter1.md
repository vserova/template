---
layout: default
title: How to use this template for your documentation
nav: pages/chapter1
---


{{ page.title }}
================================================


## Chapter Outline

- [How to start](#chapter1.how_to_start)

  - [Creating your repository](#chapter1.Creating_your_repository)
  
  - [Cloning the template](#chapter1.Cloning_the_template)
  
  - [Setting up your own site](#chapter1.Setting_up_your_own_site)
  
    - [About this template](#chapter1.About_this_template)
    
  - [Indexing your GitHub site with Google](#chapter1.Indexing_your_GitHub_site_with_Google)


<a name="chapter1.how_to_start"></a>

How to start
-------------

<a name="chapter1.Creating_your_repository"></a>

### Creating your repository

Our template is created to help you develop and maintain your documentation based on GitHub platform. We use [GitHub Pages](https://pages.github.com/) for C++ Toolkit documentation. This platform proves to be efficient, flexible, and convenient for such use. There are some drawbacks, but they are minor.

To start your project on GitHub you have to create a repository. All NCBI repositories must be reside under GitHub NCBI organisation [https://github.com/ncbi](https://github.com/ncbi). To create a repository, you need to submit a request to [github-tools@ncbi.nlm.nih.gov](mailto:github-tools@ncbi.nlm.nih.gov) You will have to provide them with the name for your repository. This name will be part of URL for your GitHub website if you will use GitHub pages and our template. You can find the information about GitHub Pages [here](https://help.github.com/en/github/working-with-github-pages/about-github-pages).

You also have to ask NCBI GitHub support group to give admin permissions to a person or group of persons that will administrate your repository. This person(s) will be administrate your site, give permissions to other contributors, review and merge pull requests, etc.
You can read about GitHub permissions [here](https://help.github.com/en/github/getting-started-with-github/access-permissions-on-github).

<a name="chapter1.Cloning_the_template"></a>

### Cloning the template

The next step is cloning this template. 

<a name="chapter1.Setting_up_your_own_site"></a>

### Setting up your own site

After the original set up is complete, you can now edit your repository.

<a name="chapter1.About_this_template"></a>

#### About this template

This template is based on C++ Toolkit documentation. It consists of several blocks:

* Header
* Sidebar
* Footer
* Content
* Help page

You can customize any of these blocks. The footer might not need to be customized/updated because it is a standard NCBI footer.

HTML files for header, sidebar, and footer are located in template/_includes/ directory. We use static site generator [Jekyll](https://help.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll) to render your GitHub pages. Header, sidebar, and footer are parts of page template, i.e. they will be displayed on each of your GitHub page.

The content consists of your parts and chapters. All content files are located in template/pages/ directory.

<a name="chapter1.Indexing_your_GitHub_site_with_Google"></a>

### Indexing your GitHub site with Google.
