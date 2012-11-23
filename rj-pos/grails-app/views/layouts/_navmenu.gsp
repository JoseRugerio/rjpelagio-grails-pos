<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<div id="navMenu">
  <ul>
    <li><a href="#">Product</a>
      <ul>
        <li><g:link controller="product" action="list">Setup</g:link>
            <ul>
              <li><g:link controller="product" action="list">Product</g:link></li>
              <li><g:link controller="productCategory" action="list">Product Category</g:link></li>
              <li><g:link controller="periodType" action="list">Product Type</g:link></li>
            </ul>
        </li>
        <li><g:link controller="product" action="reports">Reports</g:link>
      </ul>
    </li>
    <li><g:link controller="status" action="list">Utilities</g:link>
        <ul>
          <li><g:link controller="status" action="list">Status</g:link></li>
          <li><g:link controller="statusType" action="list">Status Type</g:link></li>
          <li><g:link controller="uom" action="list">UOM</g:link></li>
        </ul>
    </li>
  </ul>
</div>
<div style="clear:both"></div>

