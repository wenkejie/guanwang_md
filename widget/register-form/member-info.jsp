<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<fis:extends name="./form.jsp">

    <fis:block name="rg-form">
     <input type="hidden" name="step" value="2"/>
     <%-- 第一步提交的信息 --%>
    <input  type="hidden" name="username"  ms-duplex="registry.username"/> 
    <input   type="hidden" name="password" ms-duplex="registry.password"/>
     <%-- 第二步提交的信息--%>
    <div class="basic-title-contaner">
                <h1 class="basic-title">完善用户资料</h1>
                <p class="basic-tip">为了您更精准的服务，我们建议您立即完善以下信息，我们会保障您的信息安全！</p>
            </div>  
       <div class="rg-form basic-form">
             <fis:widget name="widget/error-tip/error-tip.jsp"/>
            <div class="rg-form-line form-line-first">
                <label class="information-label"><span class="information-label-notice">*</span>公司名称</label> 
                <div class="rg-input input-padding" ms-class-rg-input-error="error.companyName">
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                        name="companyName" ms-duplex-required="registry.companyName"/>
                </div>
                  <div class="rg-tips rg-tips-error" ms-visible="error.companyName">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">公司名不能为空</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label"><span class="information-label-notice">*</span>联系人</label> 
                <div class="rg-input input-padding" ms-class-rg-input-error="error.contact">  
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                      name="contact" ms-duplex-required="registry.contact"/>
                </div>
                 <div class="rg-tips rg-tips-error" ms-visible="error.contact">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">联系人不能为空</p>
                </div>

            </div>
            <div class="rg-form-line">
                <label class="information-label"><span class="information-label-notice">*</span>手机号</label> 
                <div class="rg-input input-padding"  ms-class-rg-input-error="error.mobile">  
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                       name="mobile" ms-duplex-required-phone="registry.mobile" />
                </div>
                 <div class="rg-tips rg-tips-error" ms-visible="error.mobile">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">手机号不能为空或格式不对</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label">固定电话</label> 
                <div class="rg-input input-padding" ms-class-rg-input-error="error.telephone">
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                        name="telephone" ms-duplex-norequired-pattern="registry.telephone"  pattern="(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?"/>
                </div>
                   <div class="rg-tips rg-tips-error" ms-visible="error.telephone">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">固定电话格式不对</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label"><span class="information-label-notice">*</span>企业邮箱</label> 
                <div class="rg-input input-padding"  ms-class-rg-input-error="error.email">
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                        name="email" ms-duplex-required-email="registry.email"/>
                </div>
                                                    <div class="rg-tips rg-tips-error" ms-visible="error.email">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">公司邮箱不能为空或格式不对</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label"><span class="information-label-notice">*</span>地区</label> 
                <div class="rg-input input-padding" ms-widget="region"  ></div>
                 <div class="rg-tips rg-tips-error" ms-visible="error.province || error.city">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">地区不能为空</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label"><span class="information-label-notice">*</span>公司地址</label> 
                <div class="rg-input input-padding"  ms-class-rg-input-error="error.address">
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                        name="address" ms-duplex-required="registry.address"/>
                </div>
                 <div class="rg-tips rg-tips-error" ms-visible="error.address">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">公司地址不能为空</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label"><span class="information-label-notice">*</span>业务类型</label> 
                <div class="rg-input input-padding" >
                    <label><span class="checkbox-btn" >
                        <input name="businessType" type="checkbox"  value="efcl" 
                         ms-duplex-contains-string="registry.businessType"  data-duplex-contains="efcl,elcl,air"/></span>海运出口整箱</label>
                    <label class="checkbox-label"><span class="checkbox-btn">
                        <input name="businessType" type="checkbox" ms-duplex-string="registry.businessType" value="elcl" /></span>海运出口拼箱</label>
                    <label><span class="checkbox-btn">
                        <input name="businessType" type="checkbox" ms-duplex-string="registry.businessType" value="air" /></span>空运</label>
                </div>
                 <div class="rg-tips rg-tips-error" ms-visible="error.businessType">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">业务类型不能为空</p>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label">公司规模</label> 
                <div class="rg-input input-padding"  ms-class-rg-input-error="error.scale">
                    <input class="rg-input-enter input-radius" type="text" placeholder="" 
                        name="scale" ms-duplex-norequired-int="registry.scale"/>
                </div>
                     <div class="rg-tips rg-tips-error" ms-visible="error.scale">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">公司规模格式不对</p>
                </div>

            </div>
            <div class="rg-form-line">
                <label class="information-label">公司网站</label> 
                <div class="rg-input input-padding">
                    <input class="rg-input-enter input-radius" type="text" placeholder=""
                        name="website" ms-duplex="registry.website"/>
                </div>
            </div>
            <div class="rg-form-line">
                <label class="information-label">信息来源</label> 
                <input  type="hidden" name="source" ms-duplex="registry.source" />
                <div class="rg-input input-padding"  ms-widget="infosource" />
            </div>
            <div class="rg-form-line">
                <label class="information-label vat"><span class="information-label-notice">*</span>营业执照</label> 
                <input type="hidden" name="businessLicense"  ms-duplex-required="registry.businessLicense"  data-blicense="true"/>
                <div class="rg-upload-area">
                     <div id="filePicker">选择附件</div>
                    <div class="upload-list" ms-visible="fileName">
                        <p class="upload-list-cell">
                        <a ms-attr-href="fileUrl" >{{fileName}}</a>
                        <a class="del" href="javascript:;"  ms-click="deleteFile()">删除</a>
                        </p>
                    </div>
                </div>
                <div class="rg-tips rg-tips-error" ms-visible="error.businessLicense">
                    <span class="rg-tips-icon"></span>
                    <p class="rg-tips-info">营业执照不能为空</p>
                </div>
            </div>
           
                        <%-- 提交按钮--%>
        <div class="rg-form-line">
                    <button class="rg-btn j-open btn-width" type="submit">提交审核</button>
        </div>
        </div>
     </fis:block>

       

</fis:extends>