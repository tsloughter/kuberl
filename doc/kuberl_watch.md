

# Module kuberl_watch #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

__This module defines the `kuberl_watch` behaviour.__<br /> Required callback functions: `init/1`, `handle_event/3`, `terminate/2`.

<a name="types"></a>

## Data Types ##




### <a name="type-event_type">event_type()</a> ###


<pre><code>
event_type() = added | modified | deleted | error
</code></pre>




### <a name="type-object">object()</a> ###


<pre><code>
object() = <a href="maps.md#type-map">maps:map()</a>
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#callback_mode-0">callback_mode/0</a></td><td></td></tr><tr><td valign="top"><a href="#closed-3">closed/3</a></td><td></td></tr><tr><td valign="top"><a href="#init-1">init/1</a></td><td></td></tr><tr><td valign="top"><a href="#open-3">open/3</a></td><td></td></tr><tr><td valign="top"><a href="#start_link-6">start_link/6</a></td><td></td></tr><tr><td valign="top"><a href="#terminate-3">terminate/3</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="callback_mode-0"></a>

### callback_mode/0 ###

`callback_mode() -> any()`

<a name="closed-3"></a>

### closed/3 ###

`closed(X1, X2, Data) -> any()`

<a name="init-1"></a>

### init/1 ###

`init(X1) -> any()`

<a name="open-3"></a>

### open/3 ###

`open(Type, Event, Data) -> any()`

<a name="start_link-6"></a>

### start_link/6 ###

`start_link(CbModule, ApiModule, ApiMethod, RequiredArgs, Optional, CbArgs) -> any()`

<a name="terminate-3"></a>

### terminate/3 ###

`terminate(Reason, State, Data) -> any()`

