<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* E:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/chi-tiet-bang-gia.htm */
class __TwigTemplate_f8a69e1c0b0573883f7ec6445519a8d1364ac4148a39040c6e498e6bb7a702d8 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $context["categories_child"] = twig_get_attribute($this->env, $this->source, ($context["categories_child"] ?? null), "categoriesChild", [], "any", false, false, false, 1);
        // line 2
        echo "

<div id=\"p-d\">
    <div class=\"container\">
        <div class=\"price-category\">
            <div class=\"row\">
                ";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories_child"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category_child"]) {
            // line 9
            echo "                <div class=\"col-md-3 col-6 mt-2 mb-2\">
                    <a class=\"\" href=\"";
            // line 10
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category_child"], "url", [], "any", false, false, false, 10), "html", null, true);
            echo "\">
                        <div class=\"border-round ";
            // line 11
            if ((twig_get_attribute($this->env, $this->source, $context["category_child"], "is_active", [], "any", false, false, false, 11) == 1)) {
                echo " active ";
            }
            echo "\">
                            <div class=\"inner d-flex align-items-center\">
                                <img src=\"";
            // line 13
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["category_child"], "img_primary", [], "any", false, false, false, 13));
            echo "\" alt=\"\">
                                <div class=\"nav-text\"> ";
            // line 14
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category_child"], "category_title", [], "any", false, false, false, 14), "html", null, true);
            echo "</div>
                            </div>
                        </div>
                    </a>
                </div>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category_child'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 20
        echo "            </div>
        </div>
        <div class=\"price-detail\">
            <h2>Sea Wedding Studio Bảng Giá Và Gói Chụp</h2>
            <hr>
            <div class=\"info\">
                <div class=\"row\">
                    ";
        // line 27
        $context["categories_post"] = twig_get_attribute($this->env, $this->source, ($context["categories_post"] ?? null), "categoriesPost", [], "any", false, false, false, 27);
        // line 28
        echo "                    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories_post"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 29
            echo "                    <div class=\"col-md-6 mb-3\">
                        <div class=\"one-item\">
                            <div class=\"img-main\">
                                <img src=\"";
            // line 32
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 32));
            echo "\" alt=\"\">
                                <div class=\"title\">";
            // line 33
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 33), "html", null, true);
            echo " <span>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 33), "html", null, true);
            echo "</span></div>
                            </div>
                            <div class=\"description\">
                                ";
            // line 36
            echo twig_get_attribute($this->env, $this->source, $context["post"], "content", [], "any", false, false, false, 36);
            echo "
                            </div>
                        </div>

                    </div>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 42
        echo "                </div>
            </div>
        </div>
        ";
        // line 45
        $context["category_detail"] = twig_get_attribute($this->env, $this->source, ($context["category_detail"] ?? null), "category_detail", [], "any", false, false, false, 45);
        // line 46
        echo "        <div class=\"price-photos\">
            <h3>Hình ảnh tham khảo</h3>
            <hr>
            <div class=\"grid-album\">
                <div class=\"grid-sizer\">
                    ";
        // line 51
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["category_detail"] ?? null), "photos", [], "any", false, false, false, 51));
        foreach ($context['_seq'] as $context["_key"] => $context["photo"]) {
            // line 52
            echo "                    ";
            $context["source"] = $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["photo"], "photo_path", [], "any", false, false, false, 52));
            // line 53
            echo "                    ";
            $context["ratio"] = ((call_user_func_array($this->env->getFunction('image_height')->getCallable(), [($context["source"] ?? null)]) / call_user_func_array($this->env->getFunction('image_width')->getCallable(), [($context["source"] ?? null)])) * 100);
            // line 54
            echo "                    <div class=\"grid-item\">
                        <a class=\"fancybox\" data-fancybox=\"gallery\"
                           href=\"";
            // line 56
            echo twig_escape_filter($this->env, ($context["source"] ?? null), "html", null, true);
            echo "\">
                            <div class=\"wrapper\" style=\"width:100%; padding-bottom: ";
            // line 57
            echo twig_escape_filter($this->env, ($context["ratio"] ?? null), "html", null, true);
            echo "%\">
                                <div class=\"inner\">
                                    <img class=\"lazy-img-src\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\"
                                         data-src=\"";
            // line 60
            echo twig_escape_filter($this->env, ($context["source"] ?? null), "html", null, true);
            echo "\"/>
                                </div>
                            </div>
                        </a>
                    </div>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['photo'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 66
        echo "                </div>
            </div>
        </div>
        <div class=\"price-plus\">
            <table id=\"more-price\" class=\"table table-striped\">
                <thead>
                <tr>
                    <th style=\"color: #08327E\" scope=\"col\">Khách hàng có nhu cầu làm thêm, thuê thêm</th>
                    <th style=\"color:#08327E;text-align: right\" scope=\"col\">Giá</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1 ảnh cổng ép gỗ 60*90</td>
                    <td>+ 600.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 ảnh cổng pha lê 60*90</td>
                    <td>+ 1.500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 ảnh 40*60</td>
                    <td>+ 300.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 slideshow trình chiếu nhà hàng</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Quay MV</td>
                    <td>+ 5.000.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 váy cưới</td>
                    <td>+ 1.500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 vest</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Chép file gốc RAW</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Chụp thêm 1 địa điểm</td>
                    <td>+ 1.000.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Khách có nhu cầu sử dụng hoa tươi</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Nếu chụp thêm 1 ngày</td>
                    <td>+ 3.000.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Rửa thêm 1 ảnh 13*18</td>
                    <td>+ 20.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Thêm 1 tờ album</td>
                    <td>+ 200.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Thêm 5 tờ album</td>
                    <td>+1.000.000 VNĐ, tặng 1 tờ</td>
                </tr>
                <tr>
                    <td>Thêm 10 tờ album</td>
                    <td>+2.000.000 VNĐ, tặng 2 tờ</td>
                </tr>
                </tbody>
            </table>
            <div id=\"location-price\">
                <h4>GIÁ VÉ VÀO CỔNG CÁC ĐỊA ĐIỂM CHỤP ẢNH CƯỚI:</h4>
                <p>Đối với tất cả các gói chụp ảnh cưới của chúng tôi, khách hàng được tuỳ chọn thoả thích các địa điểm
                    chụp. Chính vì vậy, các khoản chi phí vào bất kỳ địa điểm nào các bạn phải chịu. Việc xác định giá
                    vé vào cổng ở các địa điểm chụp ảnh cưới sẽ giúp cho các bạn chuẩn bị tốt hơn về ngân sách cũng như
                    thời gian. Dưới đây chúng tôi xin gửi các bạn giá vé vào cổng của một số địa điểm chụp ảnh cưới nổi
                    bật nhất</p>
                <ul>
                    <li>Bãi đá Obama, cầu bãi đa : 70.000 VNĐ</li>
                    <li>Hồ xanh: 70.000 VNĐ</li>
                    <li>Đường cong bán đảo sơn trà: Miễn phí</li>
                    <li>Cầu tình yêu: Miễn phí</li>
                    <li>Cầu rồng: Miễn phí</li>
                    <li>Bãi cháy: Miễn phí</li>
                    <li>Công viên Châu Á: 300.000 VNĐ</li>
                    <li>Phim trường 47 concept: 300.000 VNĐ/tiếng</li>
                    <li>Phim trường luxury: 400.000 VNĐ/tiếng</li>
                    <li>Vé cáp treo Bà Nà: Người địa phương 450.000/người, người tỉnh thành khác 750.000/người</li>
                </ul>
                <p style=\"color: red\">Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ</p>
                <p>[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu</p>
                <p>[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.</p>
                <p>[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành đà nẵng từ gói 10.000.000 trở lên.</p>
                <h5>Đặt lịch chụp</h5>
                <p>Khách hàng chọn ngày chụp và đặt lịch chụp, vui lòng gởi cọc <span style=\"font-weight: bold\">2.000.000 VNĐ</span>
                    áp dụng cho các gói chụp. Đặt cọc tại Studio hoặc chuyển khoản. Đối với những khách hàng đã đặt cọc
                    có thể thỏa thuận để rời ngày chụp 01 lần mà không mất thêm phí. Đối với khách hàng hủy lịch chụp sẽ
                    không được hoàn lại tiền đã cọc.</p>
                <p>Khách hàng vui lòng liên lạc sớm để được tư vấn, trao đổi cụ thể. Khách hàng còn bất cứ thắc mắc gì
                    về dịch vụ của chúng tôi có thể trao đổi qua hotline, mail hoặc fanpage.</p>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-bang-gia.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  176 => 66,  164 => 60,  158 => 57,  154 => 56,  150 => 54,  147 => 53,  144 => 52,  140 => 51,  133 => 46,  131 => 45,  126 => 42,  114 => 36,  106 => 33,  102 => 32,  97 => 29,  92 => 28,  90 => 27,  81 => 20,  69 => 14,  65 => 13,  58 => 11,  54 => 10,  51 => 9,  47 => 8,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set categories_child=categories_child.categoriesChild %}


<div id=\"p-d\">
    <div class=\"container\">
        <div class=\"price-category\">
            <div class=\"row\">
                {% for category_child in categories_child%}
                <div class=\"col-md-3 col-6 mt-2 mb-2\">
                    <a class=\"\" href=\"{{category_child.url}}\">
                        <div class=\"border-round {% if category_child.is_active==1%} active {% endif %}\">
                            <div class=\"inner d-flex align-items-center\">
                                <img src=\"{{category_child.img_primary|media}}\" alt=\"\">
                                <div class=\"nav-text\"> {{category_child.category_title}}</div>
                            </div>
                        </div>
                    </a>
                </div>
                {% endfor %}
            </div>
        </div>
        <div class=\"price-detail\">
            <h2>Sea Wedding Studio Bảng Giá Và Gói Chụp</h2>
            <hr>
            <div class=\"info\">
                <div class=\"row\">
                    {% set categories_post=categories_post.categoriesPost %}
                    {% for post in categories_post%}
                    <div class=\"col-md-6 mb-3\">
                        <div class=\"one-item\">
                            <div class=\"img-main\">
                                <img src=\"{{post.img_primary|media}}\" alt=\"\">
                                <div class=\"title\">{{post.title}} <span>{{post.description}}</span></div>
                            </div>
                            <div class=\"description\">
                                {{post.content|raw}}
                            </div>
                        </div>

                    </div>
                    {% endfor %}
                </div>
            </div>
        </div>
        {% set category_detail=category_detail.category_detail %}
        <div class=\"price-photos\">
            <h3>Hình ảnh tham khảo</h3>
            <hr>
            <div class=\"grid-album\">
                <div class=\"grid-sizer\">
                    {% for photo in category_detail.photos %}
                    {% set source = photo.photo_path|media %}
                    {% set ratio= (image_height(source)/image_width(source))*100 %}
                    <div class=\"grid-item\">
                        <a class=\"fancybox\" data-fancybox=\"gallery\"
                           href=\"{{source}}\">
                            <div class=\"wrapper\" style=\"width:100%; padding-bottom: {{ratio}}%\">
                                <div class=\"inner\">
                                    <img class=\"lazy-img-src\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\"
                                         data-src=\"{{source}}\"/>
                                </div>
                            </div>
                        </a>
                    </div>
                    {% endfor %}
                </div>
            </div>
        </div>
        <div class=\"price-plus\">
            <table id=\"more-price\" class=\"table table-striped\">
                <thead>
                <tr>
                    <th style=\"color: #08327E\" scope=\"col\">Khách hàng có nhu cầu làm thêm, thuê thêm</th>
                    <th style=\"color:#08327E;text-align: right\" scope=\"col\">Giá</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1 ảnh cổng ép gỗ 60*90</td>
                    <td>+ 600.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 ảnh cổng pha lê 60*90</td>
                    <td>+ 1.500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 ảnh 40*60</td>
                    <td>+ 300.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 slideshow trình chiếu nhà hàng</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Quay MV</td>
                    <td>+ 5.000.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 váy cưới</td>
                    <td>+ 1.500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>1 vest</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Chép file gốc RAW</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Chụp thêm 1 địa điểm</td>
                    <td>+ 1.000.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Khách có nhu cầu sử dụng hoa tươi</td>
                    <td>+ 500.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Nếu chụp thêm 1 ngày</td>
                    <td>+ 3.000.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Rửa thêm 1 ảnh 13*18</td>
                    <td>+ 20.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Thêm 1 tờ album</td>
                    <td>+ 200.000 VNĐ</td>
                </tr>
                <tr>
                    <td>Thêm 5 tờ album</td>
                    <td>+1.000.000 VNĐ, tặng 1 tờ</td>
                </tr>
                <tr>
                    <td>Thêm 10 tờ album</td>
                    <td>+2.000.000 VNĐ, tặng 2 tờ</td>
                </tr>
                </tbody>
            </table>
            <div id=\"location-price\">
                <h4>GIÁ VÉ VÀO CỔNG CÁC ĐỊA ĐIỂM CHỤP ẢNH CƯỚI:</h4>
                <p>Đối với tất cả các gói chụp ảnh cưới của chúng tôi, khách hàng được tuỳ chọn thoả thích các địa điểm
                    chụp. Chính vì vậy, các khoản chi phí vào bất kỳ địa điểm nào các bạn phải chịu. Việc xác định giá
                    vé vào cổng ở các địa điểm chụp ảnh cưới sẽ giúp cho các bạn chuẩn bị tốt hơn về ngân sách cũng như
                    thời gian. Dưới đây chúng tôi xin gửi các bạn giá vé vào cổng của một số địa điểm chụp ảnh cưới nổi
                    bật nhất</p>
                <ul>
                    <li>Bãi đá Obama, cầu bãi đa : 70.000 VNĐ</li>
                    <li>Hồ xanh: 70.000 VNĐ</li>
                    <li>Đường cong bán đảo sơn trà: Miễn phí</li>
                    <li>Cầu tình yêu: Miễn phí</li>
                    <li>Cầu rồng: Miễn phí</li>
                    <li>Bãi cháy: Miễn phí</li>
                    <li>Công viên Châu Á: 300.000 VNĐ</li>
                    <li>Phim trường 47 concept: 300.000 VNĐ/tiếng</li>
                    <li>Phim trường luxury: 400.000 VNĐ/tiếng</li>
                    <li>Vé cáp treo Bà Nà: Người địa phương 450.000/người, người tỉnh thành khác 750.000/người</li>
                </ul>
                <p style=\"color: red\">Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ</p>
                <p>[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu</p>
                <p>[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.</p>
                <p>[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành đà nẵng từ gói 10.000.000 trở lên.</p>
                <h5>Đặt lịch chụp</h5>
                <p>Khách hàng chọn ngày chụp và đặt lịch chụp, vui lòng gởi cọc <span style=\"font-weight: bold\">2.000.000 VNĐ</span>
                    áp dụng cho các gói chụp. Đặt cọc tại Studio hoặc chuyển khoản. Đối với những khách hàng đã đặt cọc
                    có thể thỏa thuận để rời ngày chụp 01 lần mà không mất thêm phí. Đối với khách hàng hủy lịch chụp sẽ
                    không được hoàn lại tiền đã cọc.</p>
                <p>Khách hàng vui lòng liên lạc sớm để được tư vấn, trao đổi cụ thể. Khách hàng còn bất cứ thắc mắc gì
                    về dịch vụ của chúng tôi có thể trao đổi qua hotline, mail hoặc fanpage.</p>
            </div>
        </div>
    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-bang-gia.htm", "");
    }
}
