<gm:page title="Mashup" css="/css/g.css" class="googleTheme">

    <!--
       The mashup application demonstrates taking a external RSS feed with geo-location
       information and mapping it on a Google Map. Interaction between a list and a map
       is also demonstrated via the handleEvent tag.
       @author: GME Team
    -->


  <div class="gm-app-header">
    <table>
      <tr>
        <td width="200"><h1>Mashup</h1></td>
      </tr>
    </table>
  </div>

  <table width="900">
    <tr valign="top">
      <td width="300">
        <gm:list id="myList" data="http://www.mapnut.com/calstatepark.xml" pagesize="10">
          <gm:handleEvent src="myMap" event="select"/>
        </gm:list>
      </td>
      <td class="mainPanel">
        <gm:map id="myMap" height="500px" data="${myList}" latref="geo:lat" lngref="geo:long" infotemplate="detailTemplate">
          <gm:handleEvent src="myList" event="select"/>
        </gm:map>
      </td>
    </tr>    
  </table>

  <gm:template id="detailTemplate">
    <div repeat="true">
      <b><gm:text ref="atom:title"/></b><br/>
      <gm:text ref="geo:lat"/><br/>
      <gm:text ref="geo:long"/>
    </div>
  </gm:template>

</gm:page>
