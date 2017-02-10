<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node FOLDED="false" ID="ID_1505706922" CREATED="1486207335557" MODIFIED="1486455135234" LINK="Pi-plus-microbit-intro-workshop.mm"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      microbit
    </p>
    <p style="text-align: center">
      intro
    </p>
    <p style="text-align: center">
      workshop
    </p>
    <p style="text-align: center">
      content
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" COLOR="#808080" WIDTH="thin"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Introduction" POSITION="right" ID="ID_742155583" CREATED="1486207406805" MODIFIED="1486207415011">
<node TEXT="What you will do" ID="ID_1888294199" CREATED="1486566160144" MODIFIED="1486571025720" LINK="resources/images/microbit/2-betterUX-large-preview-opt.jpg"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In this 60 minute workshop you will learn how to connect a BBC micro:bit to a Raspberry Pi.
    </p>
    <p>
      
    </p>
    <p>
      You will use the <b>mu</b>&#160;editor to write MicroPython programs and run them on the micro:bit.
    </p>
    <p>
      
    </p>
    <p>
      The experiments will show you some of the things the micro:bit can do. Use them as a base to build your own projects.
    </p>
    <p>
      
    </p>
    <p>
      You will also get some links to help you explore once the workshop is over
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Here&apos;s why!" ID="ID_1647403079" CREATED="1486720372823" MODIFIED="1486720379634"/>
<node TEXT="Don&apos;t feel you have to finish" ID="ID_1762240643" CREATED="1486720380439" MODIFIED="1486720390074"/>
</node>
<node TEXT="Setting Up" POSITION="right" ID="ID_1188307060" CREATED="1486207423965" MODIFIED="1486569784806">
<node TEXT="What you will do" ID="ID_1898891214" CREATED="1486720300815" MODIFIED="1486720306500"/>
<node TEXT="Here&apos;s why!" ID="ID_1849023444" CREATED="1486720317343" MODIFIED="1486720332644"/>
<node TEXT="What you will need" ID="ID_1047276514" CREATED="1486720306831" MODIFIED="1486720314217"/>
<node TEXT="Let&apos;s go!" ID="ID_1755078792" CREATED="1486720334519" MODIFIED="1486720344383"/>
</node>
<node TEXT="Hello World!" POSITION="right" ID="ID_270340901" CREATED="1486207515253" MODIFIED="1486720697882" LINK="../manuscript/images/hw.png"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Open a browser on http://bit.ly/pibit
    </p>
  </body>
</html>

</richcontent>
<node TEXT="What you will do" ID="ID_1733109977" CREATED="1486720268572" MODIFIED="1486720275818"/>
<node TEXT="Typing in a program" ID="ID_589419269" CREATED="1486208271693" MODIFIED="1486720131629"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In the <b>mu </b>editor, click the + (new) icon. You should see a new tab open in the editor.
    </p>
    <p>
      
    </p>
    <p>
      That's where you will type your code.
    </p>
    <p>
      
    </p>
    <p>
      The first program you'll run is the micro:bit version of <i>Hello World</i>.
    </p>
    <p>
      
    </p>
    <p>
      Here's the short program
    </p>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Import statements" ID="ID_1730334690" CREATED="1486208289246" MODIFIED="1486567289484"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier">from microbit import *</font>
    </p>
    <p>
      
    </p>
    <p>
      Tells MicroPython that you want to use the&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="display.scroll" ID="ID_238988938" CREATED="1486208302589" MODIFIED="1486719816334"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier">display.scroll('Hello World') </font><font face="SansSerif">will scroll the string 'Hello World!' across the LEDs on the micro:bit.</font>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Saving the program" ID="ID_471300285" CREATED="1486720138650" MODIFIED="1486720150159"/>
<node TEXT="Running a program" ID="ID_1077282608" CREATED="1486208253813" MODIFIED="1486719829346">
<node TEXT="Flashing the program" ID="ID_1168989125" CREATED="1486720153354" MODIFIED="1486720167873"/>
<node TEXT="Watch it run!" ID="ID_15321769" CREATED="1486720168491" MODIFIED="1486720179951"/>
<node TEXT="Troubleshooting" ID="ID_554101215" CREATED="1486720180733" MODIFIED="1486720218812"/>
</node>
</node>
<node TEXT="Images" POSITION="right" ID="ID_952913696" CREATED="1486207531446" MODIFIED="1486207564331">
<node TEXT="What you will do" ID="ID_541780103" CREATED="1486720300815" MODIFIED="1486720306500"/>
<node TEXT="Here&apos;s why!" ID="ID_208827919" CREATED="1486720317343" MODIFIED="1486720332644"/>
<node TEXT="Let&apos;s go!" ID="ID_1640326305" CREATED="1486720334519" MODIFIED="1486720344383"/>
<node TEXT="Displaying a Smiley" ID="ID_1150879606" CREATED="1486720248754" MODIFIED="1486720265013"/>
<node TEXT="Changing to a Sad face" ID="ID_1885185040" CREATED="1486720399287" MODIFIED="1486720418848"/>
<node TEXT="Making your own images" ID="ID_968692556" CREATED="1486720419407" MODIFIED="1486720430444"/>
<node TEXT="Animation - images that change" ID="ID_1607206352" CREATED="1486720430927" MODIFIED="1486720451824"/>
</node>
<node TEXT="Buttons" POSITION="right" ID="ID_725055002" CREATED="1486207607534" MODIFIED="1486207615314">
<node TEXT="What you will do" ID="ID_773691061" CREATED="1486720300815" MODIFIED="1486720306500"/>
<node TEXT="Here&apos;s why!" ID="ID_458511144" CREATED="1486720317343" MODIFIED="1486720332644"/>
<node TEXT="Let&apos;s go!" ID="ID_1341742315" CREATED="1486720334519" MODIFIED="1486720344383"/>
<node TEXT="Checking a button" ID="ID_1917297311" CREATED="1486720457135" MODIFIED="1486720469024"/>
<node TEXT="While loops" ID="ID_1416965185" CREATED="1486721586407" MODIFIED="1486721598535"/>
</node>
<node TEXT="Moving and shaking" POSITION="left" ID="ID_1743941950" CREATED="1486207720070" MODIFIED="1486208123571">
<node TEXT="What you will do" ID="ID_1125246297" CREATED="1486720300815" MODIFIED="1486720306500"/>
<node TEXT="Here&apos;s why!" ID="ID_680734497" CREATED="1486720317343" MODIFIED="1486720332644"/>
<node TEXT="Let&apos;s go!" ID="ID_41108702" CREATED="1486720334519" MODIFIED="1486720344383"/>
<node TEXT="Measuring aceleration" ID="ID_1646843076" CREATED="1486721735592" MODIFIED="1486721748153"/>
<node TEXT="Spirit Level" ID="ID_1444057373" CREATED="1486721758255" MODIFIED="1486721766745"/>
</node>
<node TEXT="What&apos;s next" POSITION="left" ID="ID_1507584763" CREATED="1486207815086" MODIFIED="1486207824585">
<node TEXT="More stuff the micro:bit can do" ID="ID_699194136" CREATED="1486208144933" MODIFIED="1486208174932">
<node TEXT="Compass" ID="ID_920809" CREATED="1486720565631" MODIFIED="1486720570066"/>
<node TEXT="Radio" ID="ID_1204667777" CREATED="1486720571119" MODIFIED="1486720573769"/>
<node TEXT="Talking to the Pi" ID="ID_408020156" CREATED="1486720574695" MODIFIED="1486720584764"/>
<node TEXT="Reaction Timer" ID="ID_1797844906" CREATED="1486207679934" MODIFIED="1486207693260"/>
<node TEXT="Fortune Cookies" ID="ID_1421625296" CREATED="1486207638398" MODIFIED="1486207650778">
<node TEXT="The fortune program" ID="ID_1424893565" CREATED="1486720496727" MODIFIED="1486720507904"/>
<node TEXT="Fortunes on the micro:bit" ID="ID_1035475529" CREATED="1486720513471" MODIFIED="1486720526330"/>
</node>
<node TEXT="Talking to Chips" ID="ID_1567317402" CREATED="1486720585911" MODIFIED="1486720592624"/>
<node TEXT="Robotics" ID="ID_1044131877" CREATED="1486721786696" MODIFIED="1486721791993">
<node TEXT="C2Pi" ID="ID_1088361223" CREATED="1486721795319" MODIFIED="1486721799689"/>
</node>
</node>
<node TEXT="Where to find out more" ID="ID_1125025479" CREATED="1486208176053" MODIFIED="1486208189811">
<node TEXT="micro:bit foundation" ID="ID_1008732464" CREATED="1486720605983" MODIFIED="1486721780168"/>
<node TEXT="Raspberry Pi foundation" ID="ID_1357351027" CREATED="1486720646295" MODIFIED="1486720676107"/>
<node TEXT="microbit news" ID="ID_520186512" CREATED="1486720619903" MODIFIED="1486720633072"/>
<node TEXT="RAREblog" ID="ID_1340206960" CREATED="1486720634623" MODIFIED="1486720641464"/>
</node>
</node>
</node>
</map>
