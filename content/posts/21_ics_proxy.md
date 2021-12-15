+++
author = "Hannes Kuchelmeister"
title = "Proxy for ICS-Calendars"
date = "2021-12-15"
tags = [
  "rust", "sqlite", "actix", "calendar", "ics"
]
+++

The project ics-proxy I started out of frustration of needing to change a web calendar link for my universities schedule every time I changed courses or a new semester started. I needed to change this link on all my devices. To simplify the process, I created a proxy that generates an intermediary link and works as a proxy in between the calendar provider and the calendar application. To use the application, the user simply has to paste in the calendar link and submit.

![](/images/posts/21_ics-proxy/main-page.png)

The application generates a link with a UUID. This link can now be used in a calendar application to get the web calendar. This link can also be entered into the application itself (on the main page) which leads to the same settings (see image below) as entering a new link. On the settings page, the user has the possibility to change the URL which the proxy contacts. Therefore, now I can generate one link with my schedule, add this to all calendars and if needed change where it points to, thereby eliminating the need to change links on every device.

![](/images/posts/21_ics-proxy/settings.png)

An instance of the project is running at [ics-proxy.de](https://ics-proxy.de/).
The source code is availabe on [GitHub](https://github.com/13hannes11/ics-proxy).

