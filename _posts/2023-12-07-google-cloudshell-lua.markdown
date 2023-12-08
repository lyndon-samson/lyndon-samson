---
layout: post
title:  "Compile lua from source in google cloud shell"
date:   2023-12-07 06:41:38 -0600
categories: programming c 
---

This post is about compiling the little language [Lua](https://www.lua.org/download.html) in the google cloud shell. Lua is interesting as it is easy to embedd and east to extend.

Lets run a google cloudshell, login to the google console and run the cloudshell
[https://console.cloud.google.com](https://console.google.com)

Now we can install the Tiny C compile 
{% highlight c %}
sudo apt-get install tcc
{% endhighlight %}

Download the lua source and unpack it
{% highlight c %}
wget https://www.lua.org/ftp/lua-5.4.6.tar.gz
{% endhighlight %}

Now we can compile
{% highlight c %}
cd lua-5.4.6/
make
{% endhighlight %}

And test!
{% highlight c %}
./src/lua -e "print 'hello'"
hello
{% endhighlight %}

So now we have lua compiled and available in our google cloud shell environment.


{% if site.comments.giscus.enabled %}
<script src="https://giscus.app/client.js"
        data-repo="lyndon-samson/lyndon-samson"
        data-repo-id="R_kgDOK0ZHmw"
        data-category="Announcements"
        data-category-id="DIC_kwDOK0ZHm84CbdFx"
        data-mapping="pathname"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="preferred_color_scheme"
        data-lang="en"
        crossorigin="anonymous"
        async>
</script>
<noscript>Please enable JavaScript to view the comments.</noscript>
{% endif %}

