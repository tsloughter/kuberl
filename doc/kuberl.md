

# Module kuberl #
* [Description](#description)
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

Kubernetes Erlang client.

<a name="types"></a>

## Data Types ##




### <a name="type-cfg">cfg()</a> ###


<pre><code>
cfg() = map()
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#cfg_with_bearer_token-1">cfg_with_bearer_token/1</a></td><td>Create a config using a given bearer <code>Token</code>.</td></tr><tr><td valign="top"><a href="#cfg_with_bearer_token-2">cfg_with_bearer_token/2</a></td><td>Add a bearer <code>Token</code> to a given config.</td></tr><tr><td valign="top"><a href="#cfg_with_host-1">cfg_with_host/1</a></td><td>Create a config with a given <code>Host</code>.</td></tr><tr><td valign="top"><a href="#cfg_with_host-2">cfg_with_host/2</a></td><td>Add a bearer <code>Token</code> to a given config.</td></tr><tr><td valign="top"><a href="#new_cfg-0">new_cfg/0</a></td><td>The default config.</td></tr><tr><td valign="top"><a href="#set_default_cfg-0">set_default_cfg/0</a></td><td>Equivalent to <a href="#set_default_cfg-1"><tt>set_default_cfg(new_cfg())</tt></a>.</td></tr><tr><td valign="top"><a href="#set_default_cfg-1">set_default_cfg/1</a></td><td>Set the default config to <code>Cfg</code>.</td></tr><tr><td valign="top"><a href="#update_cfg-1">update_cfg/1</a></td><td>Update a default config with values in <code>Map</code>.</td></tr><tr><td valign="top"><a href="#update_default_cfg-1">update_default_cfg/1</a></td><td>Update and set the default config with values in <code>Map</code>.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="cfg_with_bearer_token-1"></a>

### cfg_with_bearer_token/1 ###

<pre><code>
cfg_with_bearer_token(Token::binary()) -&gt; <a href="#type-cfg">cfg()</a>
</code></pre>
<br />

Equivalent to [`cfg_with_bearer_token(new_cfg(), Token)`](#cfg_with_bearer_token-2).

Create a config using a given bearer `Token`.

<a name="cfg_with_bearer_token-2"></a>

### cfg_with_bearer_token/2 ###

<pre><code>
cfg_with_bearer_token(Cfg::<a href="#type-cfg">cfg()</a>, Token::binary()) -&gt; <a href="#type-cfg">cfg()</a>
</code></pre>
<br />

Add a bearer `Token` to a given config.

<a name="cfg_with_host-1"></a>

### cfg_with_host/1 ###

<pre><code>
cfg_with_host(Host::string()) -&gt; <a href="#type-cfg">cfg()</a>
</code></pre>
<br />

Equivalent to [`cfg_with_host(new_cfg(), Host)`](#cfg_with_host-2).

Create a config with a given `Host`.

<a name="cfg_with_host-2"></a>

### cfg_with_host/2 ###

<pre><code>
cfg_with_host(Cfg::<a href="#type-cfg">cfg()</a>, Host::string()) -&gt; <a href="#type-cfg">cfg()</a>
</code></pre>
<br />

Add a bearer `Token` to a given config.

<a name="new_cfg-0"></a>

### new_cfg/0 ###

<pre><code>
new_cfg() -&gt; <a href="#type-cfg">cfg()</a>
</code></pre>
<br />

The default config.

<a name="set_default_cfg-0"></a>

### set_default_cfg/0 ###

<pre><code>
set_default_cfg() -&gt; ok
</code></pre>
<br />

Equivalent to [`set_default_cfg(new_cfg())`](#set_default_cfg-1).

<a name="set_default_cfg-1"></a>

### set_default_cfg/1 ###

<pre><code>
set_default_cfg(Cfg::<a href="#type-cfg">cfg()</a>) -&gt; ok
</code></pre>
<br />

Set the default config to `Cfg`.

<a name="update_cfg-1"></a>

### update_cfg/1 ###

<pre><code>
update_cfg(Map::map()) -&gt; <a href="#type-cfg">cfg()</a>
</code></pre>
<br />

Update a default config with values in `Map`.

<a name="update_default_cfg-1"></a>

### update_default_cfg/1 ###

<pre><code>
update_default_cfg(Map::map()) -&gt; ok
</code></pre>
<br />

Update and set the default config with values in `Map`.

