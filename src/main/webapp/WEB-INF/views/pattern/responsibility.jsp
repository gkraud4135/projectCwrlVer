<%--
  Created by IntelliJ IDEA.
  User: Thing
  Date: 2021-12-22
  Time: 오후 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<h1><a href="https://www.zerocho.com/category/JavaScript/post/57d24e29fbe82c0015c61245" target='_blank'>chain of responsibility(책임연쇄)</a></h1>
책임 연쇄 패턴 : 동작의 수행을 다른 객체에 떠넘기는 패턴(이벤트발생시 실패시 책임 넘기며 결합을 느슨히한다)
<div>

    <input type="button" id="codeCheck" value="코드 확인">
    <div id="testBox">
        <div class="backgroundPink">
            <a>메서드</a>
            <input type="button" id="method" value="메서드 실행">
            : 각 메서드의 조건을 순서대로 확인하여 먼저 true인것을 실행
            <div>
                <a>메서드1</a>
                <label class="switch-button"><input type="checkbox" id="method1"/> <span class="onoff-switch"></span> </label>
            </div>
            <div>
                <a>메서드2</a>
                <label class="switch-button"><input type="checkbox" id="method2"/> <span class="onoff-switch"></span> </label>
            </div>
            <div>
                <a>메서드3</a>
                <label class="switch-button"><input type="checkbox" id="method3"/> <span class="onoff-switch"></span> </label>
            </div>
        </div>
        <div class="backgroundBlack">
            <ul id="consoleWindow"></ul>
        </div>
    </div>



</div>
<div id="codeBox" hidden>
    <div class="colorscripter-code" style="color:#f0f0f0;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto"><table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#272727;border-radius:4px;" cellspacing="0" cellpadding="0"><tr><td style="padding:6px;border-right:2px solid #4f4f4f"><div style="margin:0;padding:0;word-break:normal;text-align:right;color:#aaa;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%"><div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div><div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div><div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div><div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div><div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div><div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div><div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div><div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div><div style="line-height:130%">33</div><div style="line-height:130%">34</div><div style="line-height:130%">35</div><div style="line-height:130%">36</div><div style="line-height:130%">37</div><div style="line-height:130%">38</div><div style="line-height:130%">39</div><div style="line-height:130%">40</div><div style="line-height:130%">41</div><div style="line-height:130%">42</div><div style="line-height:130%">43</div><div style="line-height:130%">44</div><div style="line-height:130%">45</div><div style="line-height:130%">46</div><div style="line-height:130%">47</div><div style="line-height:130%">48</div><div style="line-height:130%">49</div><div style="line-height:130%">50</div><div style="line-height:130%">51</div><div style="line-height:130%">52</div><div style="line-height:130%">53</div><div style="line-height:130%">54</div><div style="line-height:130%">55</div><div style="line-height:130%">56</div><div style="line-height:130%">57</div><div style="line-height:130%">58</div><div style="line-height:130%">59</div><div style="line-height:130%">60</div><div style="line-height:130%">61</div><div style="line-height:130%">62</div><div style="line-height:130%">63</div><div style="line-height:130%">64</div><div style="line-height:130%">65</div><div style="line-height:130%">66</div><div style="line-height:130%">67</div><div style="line-height:130%">68</div><div style="line-height:130%">69</div><div style="line-height:130%">70</div><div style="line-height:130%">71</div><div style="line-height:130%">72</div><div style="line-height:130%">73</div><div style="line-height:130%">74</div><div style="line-height:130%">75</div><div style="line-height:130%">76</div><div style="line-height:130%">77</div><div style="line-height:130%">78</div><div style="line-height:130%">79</div><div style="line-height:130%">80</div><div style="line-height:130%">81</div><div style="line-height:130%">82</div><div style="line-height:130%">83</div><div style="line-height:130%">84</div><div style="line-height:130%">85</div></div></td><td style="padding:6px 0;text-align:left"><div style="margin:0;padding:0;color:#f0f0f0;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%"><div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#aaffaa"></span><span style="color:#ff3399">&lt;</span>script<span style="color:#aaffaa"></span><span style="color:#ff3399">&gt;</span></div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(<span style="color:#4be6fa">document</span>).ready(<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#999999">//&nbsp;코드&nbsp;확인&nbsp;버튼</span></div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(<span style="color:#ffd500">"#codeCheck"</span>).on(<span style="color:#ffd500">"click"</span>,&nbsp;<span style="color:#ff3399">function</span>&nbsp;()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;tf&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;$(<span style="color:#ffd500">"#codeBox"</span>).is(<span style="color:#ffd500">':visible'</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">if</span>(tf){</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(<span style="color:#ffd500">"#codeBox"</span>).hide();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span style="color:#ff3399">else</span>&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(<span style="color:#ffd500">"#codeBox"</span>).show();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#999999">//메서드&nbsp;생성</span></div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(<span style="color:#ffd500">"#method"</span>).on(<span style="color:#ffd500">"click"</span>,&nbsp;<span style="color:#ff3399">function</span>&nbsp;()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;choice&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">new</span>&nbsp;DecisionMaker();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;choice.makeDecision();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;});</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;General&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;(<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">function</span>&nbsp;General()&nbsp;{}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;General.<span style="color:#4be6fa">prototype</span>.canMakeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;tf&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;$(<span style="color:#ffd500">"#method1"</span>).is(<span style="color:#ffd500">":checked"</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outConsole(<span style="color:#ffd500">'첫번째&nbsp;메서드&nbsp;확인..&nbsp;'</span><span style="color:#aaffaa"></span><span style="color:#ff3399">+</span>tf.toString());</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;tf;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;General.<span style="color:#4be6fa">prototype</span>.makeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outConsole(<span style="color:#ffd500">'첫번째&nbsp;메서드가&nbsp;실행됩니다'</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;General;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;})();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;Senator&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;(<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">function</span>&nbsp;Senator()&nbsp;{}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Senator.<span style="color:#4be6fa">prototype</span>.canMakeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;tf&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;$(<span style="color:#ffd500">"#method2"</span>).is(<span style="color:#ffd500">":checked"</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outConsole(<span style="color:#ffd500">'두번째&nbsp;메서드&nbsp;확인..&nbsp;'</span><span style="color:#aaffaa"></span><span style="color:#ff3399">+</span>tf.toString());</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;tf;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Senator.<span style="color:#4be6fa">prototype</span>.makeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outConsole(<span style="color:#ffd500">'두번째&nbsp;메서드가&nbsp;실행됩니다'</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;Senator;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;})();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;Emperor&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;(<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">function</span>&nbsp;Emperor()&nbsp;{}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Emperor.<span style="color:#4be6fa">prototype</span>.canMakeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;tf&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;$(<span style="color:#ffd500">"#method3"</span>).is(<span style="color:#ffd500">":checked"</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outConsole(<span style="color:#ffd500">'세번째&nbsp;메서드&nbsp;확인..&nbsp;'</span><span style="color:#aaffaa"></span><span style="color:#ff3399">+</span>tf.toString());</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;tf;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Emperor.<span style="color:#4be6fa">prototype</span>.makeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outConsole(<span style="color:#ffd500">'세번째&nbsp;메서드가&nbsp;실행됩니다'</span>);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;Emperor;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;})();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;DecisionMaker&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;(<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">function</span>&nbsp;DecisionMaker()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#4be6fa">this</span>.decisionMakers&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;[];</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#4be6fa">this</span>.decisionMakers.push(<span style="color:#ff3399">new</span>&nbsp;General());</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#4be6fa">this</span>.decisionMakers.push(<span style="color:#ff3399">new</span>&nbsp;Senator());</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#4be6fa">this</span>.decisionMakers.push(<span style="color:#ff3399">new</span>&nbsp;Emperor());</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DecisionMaker.<span style="color:#4be6fa">prototype</span>.makeDecision&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>()&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">for</span>&nbsp;(<span style="color:#ff3399">let</span>&nbsp;i&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#c10aff">0</span>;&nbsp;i&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">&lt;</span>&nbsp;<span style="color:#4be6fa">this</span>.decisionMakers.<span style="color:#4be6fa">length</span>;&nbsp;i<span style="color:#aaffaa"></span><span style="color:#ff3399">+</span><span style="color:#aaffaa"></span><span style="color:#ff3399">+</span>)&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">if</span>&nbsp;(<span style="color:#4be6fa">this</span>.decisionMakers[i].canMakeDecision())&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;<span style="color:#4be6fa">this</span>.decisionMakers[i].makeDecision();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">return</span>&nbsp;DecisionMaker;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;})();</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;outConsole&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;<span style="color:#ff3399">function</span>&nbsp;(message)&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">let</span>&nbsp;liObj&nbsp;<span style="color:#aaffaa"></span><span style="color:#ff3399">=</span>&nbsp;$(<span style="color:#ffd500">'&lt;li&gt;'</span>,&nbsp;{</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text:&nbsp;message,</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff3399">class</span>:&nbsp;<span style="color:#ffd500">"fontWhite"</span></div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(<span style="color:#ffd500">"#consoleWindow"</span>).append(liObj);</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;&nbsp;&nbsp;&nbsp;}</div><div style="padding:0 6px; white-space:pre; line-height:130%">&nbsp;</div><div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#aaffaa"></span><span style="color:#ff3399">&lt;</span><span style="color:#aaffaa"></span><span style="color:#ff3399">/</span>script<span style="color:#aaffaa"></span><span style="color:#ff3399">&gt;</span></div></div><div style="text-align:right;margin-top:-13px;margin-right:5px;font-size:9px;font-style:italic"><a href="http://colorscripter.com/info#e" target="_blank" style="color:#4f4f4ftext-decoration:none">Colored by Color Scripter</a></div></td><td style="vertical-align:bottom;padding:0 2px 4px 0"><a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white"><span style="font-size:9px;word-break:normal;background-color:#4f4f4f;color:white;border-radius:10px;padding:1px">cs</span></a></td></tr></table></div>
</div>
</body>
</html>
<script>
        $(document).ready(function() {

        // 코드 확인 버튼
        $("#codeCheck").on("click", function () {
            let tf = $("#codeBox").is(':visible');
            if(tf){
                $("#codeBox").hide();
            } else {
                $("#codeBox").show();
            }
        });

        //메서드 생성
        $("#method").on("click", function () {
            let choice = new DecisionMaker();
            choice.makeDecision();
        });

    });

    let General = (function() {
        function General() {}
        General.prototype.canMakeDecision = function() {
            let tf = $("#method1").is(":checked");
            outConsole('첫번째 메서드 확인.. '+tf.toString());
            return tf;
        };
        General.prototype.makeDecision = function() {
            outConsole('첫번째 메서드가 실행됩니다');
        };
        return General;
    })();
    let Senator = (function() {
        function Senator() {}
        Senator.prototype.canMakeDecision = function() {
            let tf = $("#method2").is(":checked");
            outConsole('두번째 메서드 확인.. '+tf.toString());
            return tf;
        };
        Senator.prototype.makeDecision = function() {
            outConsole('두번째 메서드가 실행됩니다');
        };
        return Senator;
    })();
    let Emperor = (function() {
        function Emperor() {}
        Emperor.prototype.canMakeDecision = function() {
            let tf = $("#method3").is(":checked");
            outConsole('세번째 메서드 확인.. '+tf.toString());
            return tf;
        };
        Emperor.prototype.makeDecision = function() {
            outConsole('세번째 메서드가 실행됩니다');
        };
        return Emperor;
    })();
    let DecisionMaker = (function() {
        function DecisionMaker() {
            this.decisionMakers = [];
            this.decisionMakers.push(new General());
            this.decisionMakers.push(new Senator());
            this.decisionMakers.push(new Emperor());
        }
        DecisionMaker.prototype.makeDecision = function() {
            for (let i = 0; i < this.decisionMakers.length; i++) {
                if (this.decisionMakers[i].canMakeDecision()) {
                    return this.decisionMakers[i].makeDecision();
                }
            }
        };
        return DecisionMaker;
    })();

    let outConsole = function (message) {
        let liObj = $('<li>', {
            text: message,
            class: "fontWhite"
        });

        $("#consoleWindow").append(liObj);

    }

</script>