<h1 align="center">
  <a href="https://github.com/Fair-Trade-Grains/wheat-cute-be">
    <img src="https://user-images.githubusercontent.com/87627363/152444996-f674e3f6-17c9-4729-a635-2883c57395ed.jpg" alt="Logo">
  </a>
</h1>
<div align="center">
  <a href="https://wheat-cute.herokuapp.com/"><strong>WheatCute App »</strong></a>
  <br />
  <a href="https://github.com/Fair-Trade-Grains/frontend"><strong>WheatCute Front-End Repo »</strong></a>
  <br />
  <a href="https://github.com/Fair-Trade-Grains/wheat-cute-be/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/Fair-Trade-Grains/wheat-cute-be/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  ·
  <a href="https://github.com/Fair-Trade-Grains/wheat-cute-be/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+">Ask a Question</a>
</div>

## Table of Contents
- [Overview](#overview)
- [Project Management](#project-management)
- [Schema](#schema)
- [Dev Setup](#dev-setup)
- [GraphQL](#graphql)
- [JSON Contract](#json-contract)
- [Technologies](#technologies)
- [Contributors](#contributors)

### <ins>Overview</ins>
WheatCute is a Rails application that aims to connect grain producers with industrial grain consumers in the baking and brewing industry.

### <ins>Project Management</ins>
- [Ideation](https://miro.com/app/board/uXjVOQKpgUY=/?invite_link_id=173812514517)
- [Project Board](https://github.com/orgs/Fair-Trade-Grains/projects/1)

### <ins>Schema</ins>
This application uses a PostgresQL database to store Farm/Grain information.
<img width="600" alt="be_schema" src="https://user-images.githubusercontent.com/81711519/154168823-de46a7fa-f6d7-4c55-ac78-124d122dceea.png">

### <ins>Dev Setup</ins>
1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set-up Figaro: `bundle exec figaro install`
3. Setup the database: `rails db:{drop,create,migrate,seed}`
4. Run `bundle exec rspec` to test

### <ins>GraphQL</ins>
All queries are made using a single GraphQL endpoint:
```
post to '/graphql'
```

### <ins>JSON Contract</ins>
[JSON Contract](https://github.com/Fair-Trade-Grains/wheat-cute-be/blob/main/json_contract.md)

### <ins>Technologies</ins>

#### Versions
- Ruby 2.7.2
- Rails 5.2.5

#### Development
![Atom][Atom-img]
![Figaro][Figaro-img]
![Git][Git-img]
![Github][GitHub-img]
![GraphQL][GraphQL-img]
![Markdown][Markdown-img]
![PostgreSQL][PostgreSQL-img]
![Postman][Postman-img]
![Ruby on Rails][Ruby on Rails-img]

#### Languages
![Ruby][Ruby-img]

#### Deployment
[![CircleCI](https://circleci.com/gh/Fair-Trade-Grains/wheat-cute-be/tree/main.svg?style=svg)](https://circleci.com/gh/Fair-Trade-Grains/wheat-cute-be/tree/main)

![CircleCi][Circle Ci-img]
![Heroku][Heroku-img]

#### Testing
![Pry][Pry-img]
![RSPEC][RSPEC-img]
![Shoulda Matchers][Shoulda Matchers-img]
![Simplecov][Simplecov-img]

#### Development Principles
![OOP][OOP-img]
![TDD][TDD-img]
![MVC][MVC-img]
![REST][REST-img]

### <ins>Contributors</ins>
![LinkedIn][LinkedIn-img]
- [Chaz Simons](https://www.linkedin.com/in/chaz-simons/)
- [Christina Delpone](https://www.linkedin.com/in/christinadelpone)
- [Joan Rasmussen](https://www.linkedin.com/in/joan-elaine-rasmussen/)
- [Nate Ewert-Krocker](https://www.linkedin.com/in/newertkrocker/)
- [Philip Medlin](https://www.linkedin.com/in/phimed/)

![Github][Github-img]
- [Chaz Simons](https://github.com/chazsimons)
- [Christina Delpone](https://github.com/cdelpone)
- [Joan Rasmussen](https://github.com/raz-joan)
- [Nate Ewert-Krocker](https://github.com/NEwertKrocker)
- [Philip Medlin](https://github.com/PhiMed)

<!-- Markdown link & img dfn's -->

<!-- #### Development -->
[Atom-img]: https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white
[Bootstrap-img]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Figaro-img]: https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Git-img]: https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white
[GitHub-img]: https://img.shields.io/badge/-GitHub-181717?style=flat&logo=github
[GraphQL-img]: https://img.shields.io/badge/-GraphQL-E10098?style=flat&logo=graphql&logoColor=light-pink
[Markdown-img]: https://img.shields.io/badge/Markdown-000000.svg??style=for-the-badge&logo=markdown&logoColor=white
[PostgreSQL-img]: https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white
[Postman-img]: https://img.shields.io/badge/Postman-FF6C37?style=flat&logo=postman&logoColor=red
[Rubocop-img]: https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Ruby on Rails-img]: https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white

<!-- #### Languages -->
[ActiveRecord-img]: https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white
[CSS3-img]: https://img.shields.io/badge/CSS3-1572B6.svg?&style=flaste&logo=css3&logoColor=white
[HTML5-img]: https://img.shields.io/badge/HTML5-0EB201.svg?&style=flaste&logo=html5&logoColor=white
[Ruby-img]: https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white

<!-- #### Deployment -->
[Heroku-img]: https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white
[Circle CI-img]: https://img.shields.io/badge/-CircleCi-brightgreen.svg?logo=LOGO
[Faraday-img]: https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Testing -->
[Capybara-img]: https://img.shields.io/badge/capybara-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Launchy-img]: https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Pry-img]: https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[RSPEC-img]: https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Shoulda Matchers-img]: https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Simplecov-img]: https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[VCR-img]: https://img.shields.io/badge/vcr-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Webmock-img]: https://img.shields.io/badge/webmock-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Development Principles -->
[OOP-img]: https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white
[TDD-img]: https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white
[MVC-img]: https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white
[REST-img]: https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white

<!-- ### <ins>Contributors</ins> -->
[LinkedIn-img]: https://img.shields.io/badge/LinkedIn-0077B5.svg??style=for-the-badge&logo=linkedin&logoColor=white
