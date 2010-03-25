
  
  

  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>colors/railscasts.vim at master from mattfoster's dotvim - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="http://github.com/fluidicon.png" title="GitHub" />

    <link href="http://assets0.github.com/stylesheets/bundle_common.css?1f1e1b3ac19d74b92c9b69cf8a953281e9244755" media="screen" rel="stylesheet" type="text/css" />
<link href="http://assets3.github.com/stylesheets/bundle_github.css?1f1e1b3ac19d74b92c9b69cf8a953281e9244755" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'rickyc'
      
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://assets2.github.com/javascripts/bundle_common.js?1f1e1b3ac19d74b92c9b69cf8a953281e9244755" type="text/javascript"></script>
<script src="http://assets2.github.com/javascripts/bundle_github.js?1f1e1b3ac19d74b92c9b69cf8a953281e9244755" type="text/javascript"></script>

        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "mattfoster/dotvim"
      })
    </script>

    
  
    
  

  <link href="http://github.com/mattfoster/dotvim/commits/master.atom" rel="alternate" title="Recent Commits to dotvim:master" type="application/atom+xml" />

        <meta name="description" content="My VIM configuration" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "mattfoster/dotvim";
      GitHub.currentRef = "master";
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body>
    
    

    

    <div class="subnavd" id="main">
      <div id="header" class="pageheaded">
        <div class="site">
          <div class="logo">
            <a href="https://github.com"><img src="/images/modules/header/logov3.png" alt="github" /></a>
          </div>
          
            


  
    <div class="userbox">
      <div class="inner">
        <div class="avatarname">
          <a href="http://github.com/rickyc"><img alt="" height="20" src="http://www.gravatar.com/avatar/3188a5315e72407b91558f5bc1650755?s=20&amp;d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-20.png" width="20" /></a>
          <a href="http://github.com/rickyc" class="name">rickyc</a>

          
          
        </div>
        <ul class="usernav">
          <li><a href="https://github.com">Dashboard</a></li>
          <li>
            
            <a href="https://github.com/inbox">Inbox</a>
            <a href="https://github.com/inbox" class="unread_count ">0</a>
          </li>
          <li><a href="https://github.com/account">Account Settings</a></li>
                    <li><a href="/logout">Log Out</a></li>
        </ul>
      </div>
    </div><!-- /.userbox -->
  


          
          <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
  
  
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="http://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

        </div>
      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">
        <h1>
          <a href="/mattfoster">mattfoster</a> / <strong><a href="http://github.com/mattfoster/dotvim">dotvim</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      
      
        <li class="for-owner" style="display:none"><a href="https://github.com/mattfoster/dotvim/edit" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/mattfoster/dotvim/toggle_watch" class="minibutton btn-watch " id="watch_button" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/mattfoster/dotvim/toggle_watch" class="minibutton btn-watch " id="unwatch_button" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          <li class="for-notforked" style="display:none"><a href="/mattfoster/dotvim/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'cec27abd9ac6e37bf4170f89d72b317780a308e1'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
          <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          <li id="pull_request_item" style="display:none"><a href="/mattfoster/dotvim/pull_request/" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
          <li><a href="#" class="minibutton btn-download " id="download_button"><span><span class="icon"></span>Download Source</span></a></li>
        
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/mattfoster/dotvim/watchers" title="Watchers" class="tooltipped downwards">1</a></li>
          <li class="forks"><a href="/mattfoster/dotvim/network" title="Forks" class="tooltipped downwards">1</a></li>
        </ul>
      </li>
    </ul>


        <ul class="tabs">
  <li><a href="http://github.com/mattfoster/dotvim/tree/master" class="selected" highlight="repo_source">Source</a></li>
  <li><a href="http://github.com/mattfoster/dotvim/commits/master" highlight="repo_commits">Commits</a></li>

  
  <li><a href="/mattfoster/dotvim/network" highlight="repo_network">Network (1)</a></li>

  

  
    
    <li><a href="/mattfoster/dotvim/issues" highlight="issues">Issues (0)</a></li>
  

  
    
    <li><a href="/mattfoster/dotvim/downloads">Downloads (0)</a></li>
  

  
    
    <li><a href="http://wiki.github.com/mattfoster/dotvim/">Wiki (1)</a></li>
  

  <li><a href="/mattfoster/dotvim/graphs" highlight="repo_graphs">Graphs</a></li>

  <li class="contextswitch nochoices">
    <span class="toggle leftwards" >
      <em>Branch:</em>
      <code>master</code>
    </span>
  </li>
</ul>

<div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
<div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

<div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/mattfoster/dotvim/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>









        
    <div id="repo_details" class="metabox clearfix ">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

      

      <div id="repository_description" rel="repository_description_edit">
        
          <p>My VIM configuration
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>
      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/mattfoster/dotvim/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="cec27abd9ac6e37bf4170f89d72b317780a308e1" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="My VIM configuration">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://" rel="nofollow"></a></p>
      </div>
      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/mattfoster/dotvim/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="cec27abd9ac6e37bf4170f89d72b317780a308e1" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      <div class="rule "></div>

      <div id="url_box" class="url-box">
        <ul class="clone-urls">
          <li id="private_clone_url" style="display:none"><a href="git@github.com:mattfoster/dotvim.git" data-permissions="Read+Write">Private</a></li>
          
            <li id="public_clone_url"><a href="git://github.com/mattfoster/dotvim.git" data-permissions="Read-Only">Read-Only</a></li>
            <li id="http_clone_url"><a href="http://github.com/mattfoster/dotvim.git" data-permissions="Read-Only">HTTP Read-Only</a></li>
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = "master"
  GitHub.currentRepoOwner = "mattfoster"
  GitHub.currentRepo = "dotvim"
  GitHub.downloadRepo = '/mattfoster/dotvim/archives/master'
  
    GitHub.hasWriteAccess = false
    GitHub.watchingRepo = false
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = ""
    GitHub.hasForked = false
  

  
</script>










  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/mattfoster/dotvim/commit/2f74bbbbfccb120f569ce0fe5d638d49c92ebbe2">Merge branch 'master' of github.com:mattfoster/dotvim</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img alt="" height="30" src="http://www.gravatar.com/avatar/00ecfc4d96eede70fc0f842c0e97db87?s=30&amp;d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-30.png" width="30" />
        </div>
        <div class="name"><a href="/mattfoster">mattfoster</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-02-24 03:27:26">Wed Feb 24 03:27:26 -0800 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/mattfoster/dotvim/commit/2f74bbbbfccb120f569ce0fe5d638d49c92ebbe2" hotkey="c">2f74bbbbfccb120f569ce0fe5d638d49c92ebbe2</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/mattfoster/dotvim/tree/2f74bbbbfccb120f569ce0fe5d638d49c92ebbe2" hotkey="t">7f6e28536d6e2776f97f2f632fd74db7de3d8460</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/mattfoster/dotvim/tree/bdabcec9ccfeccbe555c4dcfe7ed1e3b7020509c" hotkey="p">bdabcec9ccfeccbe555c4dcfe7ed1e3b7020509c</a>
      
        <span>p</span>arent&nbsp;
        
        <a href="/mattfoster/dotvim/tree/3b53db055cac6179bae597e50284585766f1a47b" hotkey="p">3b53db055cac6179bae597e50284585766f1a47b</a>
      

    </div>
  </div>

    </div>
  </div>



  
    <div id="path">
      <b><a href="/mattfoster/dotvim/tree/master">dotvim</a></b> / <a href="/mattfoster/dotvim/tree/master/colors">colors</a> / railscasts.vim       <span style="display:none" id="clippy_1551">colors/railscasts.vim</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_1551&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_1551&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div id="files">
      <div class="file">
        <div class="meta">
          <div class="info">
            <span>100644</span>
            <span>97 lines (86 sloc)</span>
            <span>4.678 kb</span>
          </div>
          <div class="actions">
            
              <a style="display:none;" id="file-edit-link" href="#" rel="/mattfoster/dotvim/file-edit/__ref__/colors/railscasts.vim">edit</a>
            
            <a href="/mattfoster/dotvim/raw/master/colors/railscasts.vim" id="raw-url">raw</a>
            
              <a href="/mattfoster/dotvim/blame/master/colors/railscasts.vim">blame</a>
            
            <a href="/mattfoster/dotvim/commits/master/colors/railscasts.vim">history</a>
          </div>
        </div>
        
  <div class="data syntax type-vim">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            
            <pre class="line_numbers">
<span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
<span id="LID37" rel="#L37">37</span>
<span id="LID38" rel="#L38">38</span>
<span id="LID39" rel="#L39">39</span>
<span id="LID40" rel="#L40">40</span>
<span id="LID41" rel="#L41">41</span>
<span id="LID42" rel="#L42">42</span>
<span id="LID43" rel="#L43">43</span>
<span id="LID44" rel="#L44">44</span>
<span id="LID45" rel="#L45">45</span>
<span id="LID46" rel="#L46">46</span>
<span id="LID47" rel="#L47">47</span>
<span id="LID48" rel="#L48">48</span>
<span id="LID49" rel="#L49">49</span>
<span id="LID50" rel="#L50">50</span>
<span id="LID51" rel="#L51">51</span>
<span id="LID52" rel="#L52">52</span>
<span id="LID53" rel="#L53">53</span>
<span id="LID54" rel="#L54">54</span>
<span id="LID55" rel="#L55">55</span>
<span id="LID56" rel="#L56">56</span>
<span id="LID57" rel="#L57">57</span>
<span id="LID58" rel="#L58">58</span>
<span id="LID59" rel="#L59">59</span>
<span id="LID60" rel="#L60">60</span>
<span id="LID61" rel="#L61">61</span>
<span id="LID62" rel="#L62">62</span>
<span id="LID63" rel="#L63">63</span>
<span id="LID64" rel="#L64">64</span>
<span id="LID65" rel="#L65">65</span>
<span id="LID66" rel="#L66">66</span>
<span id="LID67" rel="#L67">67</span>
<span id="LID68" rel="#L68">68</span>
<span id="LID69" rel="#L69">69</span>
<span id="LID70" rel="#L70">70</span>
<span id="LID71" rel="#L71">71</span>
<span id="LID72" rel="#L72">72</span>
<span id="LID73" rel="#L73">73</span>
<span id="LID74" rel="#L74">74</span>
<span id="LID75" rel="#L75">75</span>
<span id="LID76" rel="#L76">76</span>
<span id="LID77" rel="#L77">77</span>
<span id="LID78" rel="#L78">78</span>
<span id="LID79" rel="#L79">79</span>
<span id="LID80" rel="#L80">80</span>
<span id="LID81" rel="#L81">81</span>
<span id="LID82" rel="#L82">82</span>
<span id="LID83" rel="#L83">83</span>
<span id="LID84" rel="#L84">84</span>
<span id="LID85" rel="#L85">85</span>
<span id="LID86" rel="#L86">86</span>
<span id="LID87" rel="#L87">87</span>
<span id="LID88" rel="#L88">88</span>
<span id="LID89" rel="#L89">89</span>
<span id="LID90" rel="#L90">90</span>
<span id="LID91" rel="#L91">91</span>
<span id="LID92" rel="#L92">92</span>
<span id="LID93" rel="#L93">93</span>
<span id="LID94" rel="#L94">94</span>
<span id="LID95" rel="#L95">95</span>
<span id="LID96" rel="#L96">96</span>
<span id="LID97" rel="#L97">97</span>
</pre>
          </td>
          <td width="100%">
            
              <div class="highlight"><pre><div class="line" id="LC1"><span class="c">&quot; Vim color scheme</span></div><div class="line" id="LC2"><span class="c">&quot;</span></div><div class="line" id="LC3"><span class="c">&quot; Name:         railscasts.vim</span></div><div class="line" id="LC4"><span class="c">&quot; Maintainer:   Nick Moffitt &lt;nick@zork.net&gt;</span></div><div class="line" id="LC5"><span class="c">&quot; Last Change:  01 Mar 2008</span></div><div class="line" id="LC6"><span class="c">&quot; License:      WTFPL &lt;http://sam.zoy.org/wtfpl/&gt;</span></div><div class="line" id="LC7"><span class="c">&quot; Version:      2.1</span></div><div class="line" id="LC8"><span class="c">&quot;</span></div><div class="line" id="LC9"><span class="c">&quot; This theme is based on Josh O&#39;Rourke&#39;s Vim clone of the railscast</span></div><div class="line" id="LC10"><span class="c">&quot; textmate theme.  The key thing I have done here is supply 256-color</span></div><div class="line" id="LC11"><span class="c">&quot; terminal equivalents for as many of the colors as possible, and fixed</span></div><div class="line" id="LC12"><span class="c">&quot; up some of the funny behaviors for editing e-mails and such.</span></div><div class="line" id="LC13"><span class="c">&quot;</span></div><div class="line" id="LC14"><span class="c">&quot; To use for gvim:</span></div><div class="line" id="LC15"><span class="c">&quot; 1: install this file as ~/.vim/colors/railscasts.vim</span></div><div class="line" id="LC16"><span class="c">&quot; 2: put &quot;colorscheme railscasts&quot; in your .gvimrc</span></div><div class="line" id="LC17"><span class="c">&quot;</span></div><div class="line" id="LC18"><span class="c">&quot; If you are using Ubuntu, you can get the benefit of this in your</span></div><div class="line" id="LC19"><span class="c">&quot; terminals using ordinary vim by taking the following steps:</span></div><div class="line" id="LC20"><span class="c">&quot;</span></div><div class="line" id="LC21"><span class="c">&quot; 1: sudo apt-get install ncurses-term</span></div><div class="line" id="LC22"><span class="c">&quot; 2: put the following in your .vimrc</span></div><div class="line" id="LC23"><span class="c">&quot;     if $COLORTERM == &#39;gnome-terminal&#39;</span></div><div class="line" id="LC24"><span class="c">&quot;         set term=gnome-256color</span></div><div class="line" id="LC25"><span class="c">&quot;         colorscheme railscasts</span></div><div class="line" id="LC26"><span class="c">&quot;     else</span></div><div class="line" id="LC27"><span class="c">&quot;         colorscheme default</span></div><div class="line" id="LC28"><span class="c">&quot;     endif</span></div><div class="line" id="LC29"><span class="c">&quot; 3: if you wish to use this with screen, add the following to your .screenrc:</span></div><div class="line" id="LC30"><span class="c">&quot;     attrcolor b &quot;.I&quot;</span></div><div class="line" id="LC31"><span class="c">&quot;     termcapinfo xterm &#39;Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm&#39;</span></div><div class="line" id="LC32"><span class="c">&quot;     defbce &quot;on&quot;</span></div><div class="line" id="LC33"><span class="c">&quot;     term screen-256color-bce</span></div><div class="line" id="LC34">&nbsp;</div><div class="line" id="LC35"><span class="k">set</span> <span class="nb">background</span><span class="p">=</span><span class="nb">dark</span></div><div class="line" id="LC36"><span class="nb">hi</span> clear</div><div class="line" id="LC37"><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;syntax_on&quot;</span><span class="p">)</span></div><div class="line" id="LC38">&nbsp;&nbsp;<span class="nb">syntax</span> reset</div><div class="line" id="LC39"><span class="k">endif</span></div><div class="line" id="LC40">&nbsp;</div><div class="line" id="LC41"><span class="k">let</span> g:colors_name <span class="p">=</span> <span class="c">&quot;railscasts&quot;</span></div><div class="line" id="LC42">&nbsp;</div><div class="line" id="LC43"><span class="nb">hi</span> link htmlTag                     xmlTag</div><div class="line" id="LC44"><span class="nb">hi</span> link htmlTagName                 xmlTagName</div><div class="line" id="LC45"><span class="nb">hi</span> link htmlEndTag                  xmlEndTag</div><div class="line" id="LC46">&nbsp;</div><div class="line" id="LC47"><span class="nb">highlight</span> Normal                    guifg<span class="p">=</span>#E6E1DC guibg<span class="p">=</span><span class="mh">#111111</span> </div><div class="line" id="LC48"><span class="nb">highlight</span> Cursor                    guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span> guibg<span class="p">=</span>#FFFFFF ctermbg<span class="p">=</span><span class="m">15</span>	</div><div class="line" id="LC49"><span class="nb">highlight</span> CursorLine                guibg<span class="p">=</span><span class="mh">#000000</span> ctermbg<span class="p">=</span><span class="m">233</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC50">&nbsp;</div><div class="line" id="LC51"><span class="nb">highlight</span> Comment                   guifg<span class="p">=</span>#BC9458 ctermfg<span class="p">=</span><span class="m">180</span> gui<span class="p">=</span><span class="nb">italic</span></div><div class="line" id="LC52"><span class="nb">highlight</span> Constant                  guifg<span class="p">=</span>#<span class="m">6</span>D<span class="m">9</span>CBE ctermfg<span class="p">=</span><span class="m">73</span></div><div class="line" id="LC53"><span class="nb">highlight</span> Define                    guifg<span class="p">=</span>#CC7833 ctermfg<span class="p">=</span><span class="m">173</span></div><div class="line" id="LC54"><span class="nb">highlight</span> Error                     guifg<span class="p">=</span>#FFC66D ctermfg<span class="p">=</span><span class="m">221</span> guibg<span class="p">=</span><span class="mh">#990000</span> ctermbg<span class="p">=</span><span class="m">88</span></div><div class="line" id="LC55"><span class="nb">highlight</span> Function                  guifg<span class="p">=</span>#FFC66D ctermfg<span class="p">=</span><span class="m">221</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC56"><span class="nb">highlight</span> Identifier                guifg<span class="p">=</span>#<span class="m">6</span>D<span class="m">9</span>CBE ctermfg<span class="p">=</span><span class="m">73</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC57"><span class="nb">highlight</span> Include                   guifg<span class="p">=</span>#CC7833 ctermfg<span class="p">=</span><span class="m">173</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC58"><span class="nb">highlight</span> PreCondit                 guifg<span class="p">=</span>#CC7833 ctermfg<span class="p">=</span><span class="m">173</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC59"><span class="nb">highlight</span> Keyword                   guifg<span class="p">=</span>#CC7833 ctermfg<span class="p">=</span><span class="m">173</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC60"><span class="nb">highlight</span> LineNr                    guifg<span class="p">=</span>#<span class="m">2</span>B<span class="m">2</span>B<span class="m">2</span>B ctermfg<span class="p">=</span><span class="m">159</span> guibg<span class="p">=</span>#C0C0FF</div><div class="line" id="LC61"><span class="nb">highlight</span> Number                    guifg<span class="p">=</span>#A5C261 ctermfg<span class="p">=</span><span class="m">107</span></div><div class="line" id="LC62"><span class="nb">highlight</span> PreProc                   guifg<span class="p">=</span>#E6E1DC ctermfg<span class="p">=</span><span class="m">103</span></div><div class="line" id="LC63"><span class="nb">highlight</span> Search                    guifg<span class="p">=</span><span class="nb">NONE</span> ctermfg<span class="p">=</span><span class="nb">NONE</span> guibg<span class="p">=</span><span class="mh">#2b2b2b</span> ctermbg<span class="p">=</span><span class="m">235</span> gui<span class="p">=</span><span class="nb">italic</span> cterm<span class="p">=</span><span class="nb">underline</span></div><div class="line" id="LC64"><span class="nb">highlight</span> Statement                 guifg<span class="p">=</span>#CC7833 ctermfg<span class="p">=</span><span class="m">173</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC65"><span class="nb">highlight</span> String                    guifg<span class="p">=</span>#A5C261 ctermfg<span class="p">=</span><span class="m">107</span></div><div class="line" id="LC66"><span class="nb">highlight</span> Title                     guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span></div><div class="line" id="LC67"><span class="nb">highlight</span> Type                      guifg<span class="p">=</span>#DA4939 ctermfg<span class="p">=</span><span class="m">167</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC68"><span class="nb">highlight</span> Visual                    guibg<span class="p">=</span>#<span class="m">5</span>A<span class="m">647</span>E ctermbg<span class="p">=</span><span class="m">60</span></div><div class="line" id="LC69">&nbsp;</div><div class="line" id="LC70"><span class="nb">highlight</span> DiffAdd                   guifg<span class="p">=</span>#E6E1DC ctermfg<span class="p">=</span><span class="m">7</span> guibg<span class="p">=</span>#<span class="m">519</span>F<span class="m">50</span> ctermbg<span class="p">=</span><span class="m">71</span></div><div class="line" id="LC71"><span class="nb">highlight</span> DiffDelete                guifg<span class="p">=</span>#E6E1DC ctermfg<span class="p">=</span><span class="m">7</span> guibg<span class="p">=</span><span class="mh">#660000</span> ctermbg<span class="p">=</span><span class="m">52</span></div><div class="line" id="LC72"><span class="nb">highlight</span> Special                   guifg<span class="p">=</span>#DA4939 ctermfg<span class="p">=</span><span class="m">167</span> </div><div class="line" id="LC73">&nbsp;</div><div class="line" id="LC74"><span class="nb">highlight</span> pythonBuiltin             guifg<span class="p">=</span>#<span class="m">6</span>D<span class="m">9</span>CBE ctermfg<span class="p">=</span><span class="m">73</span> gui<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">NONE</span></div><div class="line" id="LC75"><span class="nb">highlight</span> rubyBlockParameter        guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span></div><div class="line" id="LC76"><span class="nb">highlight</span> rubyClass                 guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span></div><div class="line" id="LC77"><span class="nb">highlight</span> rubyConstant              guifg<span class="p">=</span>#DA4939 ctermfg<span class="p">=</span><span class="m">167</span></div><div class="line" id="LC78"><span class="nb">highlight</span> rubyInstanceVariable      guifg<span class="p">=</span>#D0D0FF ctermfg<span class="p">=</span><span class="m">189</span></div><div class="line" id="LC79"><span class="nb">highlight</span> rubyInterpolation         guifg<span class="p">=</span>#<span class="m">519</span>F<span class="m">50</span> ctermfg<span class="p">=</span><span class="m">107</span></div><div class="line" id="LC80"><span class="nb">highlight</span> rubyLocalVariableOrMethod guifg<span class="p">=</span>#D0D0FF ctermfg<span class="p">=</span><span class="m">189</span></div><div class="line" id="LC81"><span class="nb">highlight</span> rubyPredefinedConstant    guifg<span class="p">=</span>#DA4939 ctermfg<span class="p">=</span><span class="m">167</span></div><div class="line" id="LC82"><span class="nb">highlight</span> rubyPseudoVariable        guifg<span class="p">=</span>#FFC66D ctermfg<span class="p">=</span><span class="m">221</span></div><div class="line" id="LC83"><span class="nb">highlight</span> rubyStringDelimiter       guifg<span class="p">=</span>#A5C261 ctermfg<span class="p">=</span><span class="m">143</span></div><div class="line" id="LC84">&nbsp;</div><div class="line" id="LC85"><span class="nb">highlight</span> xmlTag                    guifg<span class="p">=</span>#E8BF6A ctermfg<span class="p">=</span><span class="m">179</span></div><div class="line" id="LC86"><span class="nb">highlight</span> xmlTagName                guifg<span class="p">=</span>#E8BF6A ctermfg<span class="p">=</span><span class="m">179</span></div><div class="line" id="LC87"><span class="nb">highlight</span> xmlEndTag                 guifg<span class="p">=</span>#E8BF6A ctermfg<span class="p">=</span><span class="m">179</span></div><div class="line" id="LC88">&nbsp;</div><div class="line" id="LC89"><span class="nb">highlight</span> mailSubject               guifg<span class="p">=</span>#A5C261 ctermfg<span class="p">=</span><span class="m">107</span></div><div class="line" id="LC90"><span class="nb">highlight</span> mailHeaderKey             guifg<span class="p">=</span>#FFC66D ctermfg<span class="p">=</span><span class="m">221</span></div><div class="line" id="LC91"><span class="nb">highlight</span> mailEmail                 guifg<span class="p">=</span>#A5C261 ctermfg<span class="p">=</span><span class="m">107</span> gui<span class="p">=</span><span class="nb">italic</span> cterm<span class="p">=</span><span class="nb">underline</span></div><div class="line" id="LC92">&nbsp;</div><div class="line" id="LC93"><span class="nb">highlight</span> SpellBad                  guifg<span class="p">=</span>#D70000 ctermfg<span class="p">=</span><span class="m">160</span> ctermbg<span class="p">=</span><span class="nb">NONE</span> cterm<span class="p">=</span><span class="nb">underline</span></div><div class="line" id="LC94"><span class="nb">highlight</span> SpellRare                 guifg<span class="p">=</span>#D75F87 ctermfg<span class="p">=</span><span class="m">168</span> guibg<span class="p">=</span><span class="nb">NONE</span> ctermbg<span class="p">=</span><span class="nb">NONE</span> gui<span class="p">=</span><span class="nb">underline</span> cterm<span class="p">=</span><span class="nb">underline</span></div><div class="line" id="LC95"><span class="nb">highlight</span> SpellCap                  guifg<span class="p">=</span>#D0D0FF ctermfg<span class="p">=</span><span class="m">189</span> guibg<span class="p">=</span><span class="nb">NONE</span> ctermbg<span class="p">=</span><span class="nb">NONE</span> gui<span class="p">=</span><span class="nb">underline</span> cterm<span class="p">=</span><span class="nb">underline</span></div><div class="line" id="LC96"><span class="nb">highlight</span> MatchParen                guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span> guibg<span class="p">=</span><span class="mh">#005f5f</span> ctermbg<span class="p">=</span><span class="m">23</span></div><div class="line" id="LC97">&nbsp;</div></pre></div>
            
          </td>
        </tr>
      </table>
    
  </div>


      </div>
    </div>

  


    </div>
  
      

      <div class="push"></div>
    </div>

    <div id="footer">
      <div class="site">
        <div class="info">
          <div class="links">
            <a href="http://github.com/blog"><b>Blog</b></a> |
            <a href="http://support.github.com/">Support</a> |
            <a href="http://github.com/training">Training</a> |
            <a href="http://github.com/contact">Contact</a> |
            <a href="http://develop.github.com">API</a> |
            <a href="http://status.github.com">Status</a> |
            <a href="http://twitter.com/github">Twitter</a> |
            <a href="http://help.github.com">Help</a> |
            <a href="http://github.com/security">Security</a>
          </div>
          <div class="company">
            &copy;
            2010
            <span id="_rrt" title="0.27387s from fe2.rs.github.com">GitHub</span> Inc.
            All rights reserved. |
            <a href="/site/terms">Terms of Service</a> |
            <a href="/site/privacy">Privacy Policy</a>
          </div>
        </div>
        <div class="sponsor">
          <div>
            Powered by the <a href="http://www.rackspace.com ">Dedicated
            Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
            Computing</a> of Rackspace Hosting<span>&reg;</span>
          </div>
          <a href="http://www.rackspace.com">
            <img alt="Dedicated Server" src="http://assets2.github.com/images/modules/footer/rackspace_logo.png?1f1e1b3ac19d74b92c9b69cf8a953281e9244755" />
          </a>
        </div>
      </div>
    </div>

    <script>window._auth_token = "cec27abd9ac6e37bf4170f89d72b317780a308e1"</script>
    
    
  </body>
</html>

