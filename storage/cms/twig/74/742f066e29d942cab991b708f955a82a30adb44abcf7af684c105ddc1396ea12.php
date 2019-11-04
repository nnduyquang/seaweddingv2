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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/home.htm */
class __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf extends \Twig\Template
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
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("sliders"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 2
        echo "<div id=\"h_2\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-6\">
                <div class=\"info\">
                    <h1 class=\"title\">
                        Chào mừng đến Sea Wedding
                    </h1>
                    <p class=\"sub-intro\">WEDDING PHOTOGRAPHY STUDIO</p>
                    <p class=\"content\">Hãy lưu giữ lại những khoảnh khắc hạnh phúc nhất về tình yêu đôi lứa thông qua
                        những bức hình cưới tuyệt đẹp cùng với đội ngũ chuyên nghiệp tại Sea Wedding </p>
                    <div class=\"bottom\">
                        <img src=\"";
        // line 14
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/temp/home/h2/welcome_icon.png");
        echo "\" alt=\"\">
                    </div>
                </div>
            </div>
            <div class=\"col-md-6\"
                 style=\"background:url(";
        // line 19
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/temp/home/h2/new_gg.png");
        echo ");background-position: center center;background-repeat: no-repeat;background-size: cover;\">
            </div>
        </div>
    </div>
</div>

";
        // line 25
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all"] ?? null), "posts", [], "any", false, false, false, 25);
        // line 26
        echo "

<div class=\"container-fluid mb-5\" id=\"h_5\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-12 title\">
                <h2>CHƯƠNG TRÌNH KHUYẾN MÃI ĐẶC BIỆT</h2>
                <p>Ưu Đãi Độc Quyền Từ Sea Wedding</p>
            </div>

            ";
        // line 36
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 37
            echo "            <div class=\"col-md-6 mb-4\">
                <div class=\"one-item\">
                    <div class=\"bg-dv\">

                        <img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\"
                             data-src=\"";
            // line 42
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 42));
            echo "\" alt=\"\">

                    </div>
                    <h3><a href=\"";
            // line 45
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 45), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 45), "html", null, true);
            echo "</a></h3>
                </div>
            </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 49
        echo "
        </div>
    </div>
</div>
";
        // line 53
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all_service"] ?? null), "posts", [], "any", false, false, false, 53);
        // line 54
        echo "
<div id=\"h_3\" class=\"pl-lg-5 pr-lg-5 pl-3 pr-3\">
    <div class=\"row pl-lg-5 pr-lg-5 pl-3 pr-3\">
        <div class=\"col-12 title\">
            <h2>DỊCH VỤ CỦA CHÚNG TÔI</h2>
            <p></p>
        </div>
        ";
        // line 61
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 62
            echo "        <div class=\"col-md-4 mb-3\">
            <a href=\"";
            // line 63
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 63), "html", null, true);
            echo "\">
                <div class=\"sv_banner\" style=\"background-image:url(";
            // line 64
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 64), "path", [], "any", false, false, false, 64));
            echo ");\">
                    <div class=\"border-top-bot\"></div>
                    <div class=\"sv_content\">
                        <h5>";
            // line 67
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 67), "html", null, true);
            echo "</h5>
                        <div class=\"info pt-3\">
                            <p>";
            // line 69
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 69), "html", null, true);
            echo "</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 76
        echo "    </div>

</div>
";
        // line 79
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("albums"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 80
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all_members"] ?? null), "posts", [], "any", false, false, false, 80);
        // line 81
        echo "
<div class=\"container-fluid\" id=\"h_6\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-12 title\">
                <h2>ĐỘI NGŨ CỦA CHÚNG TÔI</h2>

                <p>Amazing Team</p>
            </div>
            <div id=\"owl-project\" class=\"owl-carousel owl-theme\">
                ";
        // line 91
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 92
            echo "
                <div class=\"project-items text-center wow fadeIn\">
                    <div class=\"employee\">
                        <div class=\"img-emp\" style=\"background-image:url(";
            // line 95
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 95));
            echo ");\">

                        </div>
                    </div>
                    <h6>";
            // line 99
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 99), "html", null, true);
            echo "</h6>
                    <p>";
            // line 100
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 100), "html", null, true);
            echo "</p>
                </div>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 103
        echo "            </div>
        </div>
    </div>
</div>
<div id=\"h_8\">
    <div class=\"front-page-4 bg-primary with-background-image\"
         style=\"background-image: url(";
        // line 109
        echo $this->extensions['System\Twig\Extension']->mediaFilter("members/hai_nguyen_seawedding.jpg");
        echo ")\">
        <div class=\"wrap\">
            <div class=\"widget-area\">
                <section id=\"text-6\" class=\"widget widget_text\">
                    <div class=\"widget-wrap\">
                        <div class=\"textwidget\">
                            <div class=\"card two-fifths right\">
                                <h6 class=\"card-title\">Photographer</h6>
                                <p><span class=\"huge\">Xin Chào,</span></p>
                                <h5>Tôi là Nguyễn Hải</h5>
                                <p>Tôi là photographer chính của Sea Wedding. Tôi yêu mọi thứ đẹp đẽ và độc đáo không
                                    chỉ trong cuộc sống hàng ngày của tôi mà còn trong những khoảnh khắc đặc biệt như
                                    ghi lại những khoảnh khắc đẹp nhất trong cuộc đời của cô dâu chú rể.</p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
";
        // line 130
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all_customer"] ?? null), "posts", [], "any", false, false, false, 130);
        // line 131
        echo "
<div id=\"h_9\">
    <div class=\"front-page-5 flexible-widget-area\">
        <div class=\"wrap\">
            <div class=\"widget-area\">
                <section id=\"text-7\" class=\"widget widget_text\">
                    <div class=\"widget-wrap\"><h3 class=\"widgettitle widget-title\">Testimonials</h3>
                        <div class=\"textwidget\"></div>
                    </div>
                </section>
                <section id=\"gts_widget-2\" class=\"widget widget_gts_widget\">
                    <div class=\"widget-wrap\"><h3 class=\"widgettitle widget-title\">Khách Hàng Nói Về Sea Wedding</h3>
                        <div id=\"gts-testimonials\">
                            <div class=\"wrap\">
                                <ul class=\"testimonials-list\">
                                    ";
        // line 146
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 147
            echo "                                    <li itemprop=\"review\" itemscope itemtype=\"http://schema.org/Review\">
                                        <img width=\"700\"
                                             height=\"700\"
                                             src=\"";
            // line 150
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 150));
            echo "\"
                                             class=\"attachment-gts-thumbnail size-gts-thumbnail wp-post-image\"
                                             alt=\"\"
                                             srcset=\"\"
                                             sizes=\"(max-width: 700px) 100vw, 700px\"/>
                                        <blockquote itemprop=\"reviewBody\"><strong>";
            // line 155
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 155), "html", null, true);
            echo "</strong><br>
                                            ";
            // line 156
            echo twig_get_attribute($this->env, $this->source, $context["post"], "content", [], "any", false, false, false, 156);
            echo "
                                        </blockquote>
                                        <h5 itemprop=\"author\">";
            // line 158
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 158), "html", null, true);
            echo "</h5><span class=\"gts-company\"></span>
                                    </li>
                                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 161
        echo "                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  305 => 161,  296 => 158,  291 => 156,  287 => 155,  279 => 150,  274 => 147,  270 => 146,  253 => 131,  251 => 130,  227 => 109,  219 => 103,  210 => 100,  206 => 99,  199 => 95,  194 => 92,  190 => 91,  178 => 81,  176 => 80,  172 => 79,  167 => 76,  154 => 69,  149 => 67,  143 => 64,  139 => 63,  136 => 62,  132 => 61,  123 => 54,  121 => 53,  115 => 49,  103 => 45,  97 => 42,  90 => 37,  86 => 36,  74 => 26,  72 => 25,  63 => 19,  55 => 14,  41 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% component 'sliders' %}
<div id=\"h_2\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-6\">
                <div class=\"info\">
                    <h1 class=\"title\">
                        Chào mừng đến Sea Wedding
                    </h1>
                    <p class=\"sub-intro\">WEDDING PHOTOGRAPHY STUDIO</p>
                    <p class=\"content\">Hãy lưu giữ lại những khoảnh khắc hạnh phúc nhất về tình yêu đôi lứa thông qua
                        những bức hình cưới tuyệt đẹp cùng với đội ngũ chuyên nghiệp tại Sea Wedding </p>
                    <div class=\"bottom\">
                        <img src=\"{{ 'assets/images/temp/home/h2/welcome_icon.png'|theme }}\" alt=\"\">
                    </div>
                </div>
            </div>
            <div class=\"col-md-6\"
                 style=\"background:url({{ 'assets/images/temp/home/h2/new_gg.png'|theme }});background-position: center center;background-repeat: no-repeat;background-size: cover;\">
            </div>
        </div>
    </div>
</div>

{% set posts=post_all.posts %}


<div class=\"container-fluid mb-5\" id=\"h_5\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-12 title\">
                <h2>CHƯƠNG TRÌNH KHUYẾN MÃI ĐẶC BIỆT</h2>
                <p>Ưu Đãi Độc Quyền Từ Sea Wedding</p>
            </div>

            {% for post in posts %}
            <div class=\"col-md-6 mb-4\">
                <div class=\"one-item\">
                    <div class=\"bg-dv\">

                        <img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\"
                             data-src=\"{{post.img_primary|media}}\" alt=\"\">

                    </div>
                    <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>
                </div>
            </div>
            {% endfor %}

        </div>
    </div>
</div>
{% set posts=post_all_service.posts %}

<div id=\"h_3\" class=\"pl-lg-5 pr-lg-5 pl-3 pr-3\">
    <div class=\"row pl-lg-5 pr-lg-5 pl-3 pr-3\">
        <div class=\"col-12 title\">
            <h2>DỊCH VỤ CỦA CHÚNG TÔI</h2>
            <p></p>
        </div>
        {% for post in posts %}
        <div class=\"col-md-4 mb-3\">
            <a href=\"{{ post.url }}\">
                <div class=\"sv_banner\" style=\"background-image:url({{post.img_primary.path|media}});\">
                    <div class=\"border-top-bot\"></div>
                    <div class=\"sv_content\">
                        <h5>{{ post.title }}</h5>
                        <div class=\"info pt-3\">
                            <p>{{ post.description }}</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        {% endfor %}
    </div>

</div>
{% component 'albums' %}
{% set posts=post_all_members.posts %}

<div class=\"container-fluid\" id=\"h_6\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-12 title\">
                <h2>ĐỘI NGŨ CỦA CHÚNG TÔI</h2>

                <p>Amazing Team</p>
            </div>
            <div id=\"owl-project\" class=\"owl-carousel owl-theme\">
                {% for post in posts %}

                <div class=\"project-items text-center wow fadeIn\">
                    <div class=\"employee\">
                        <div class=\"img-emp\" style=\"background-image:url({{post.img_primary|media}});\">

                        </div>
                    </div>
                    <h6>{{post.title}}</h6>
                    <p>{{post.description}}</p>
                </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
<div id=\"h_8\">
    <div class=\"front-page-4 bg-primary with-background-image\"
         style=\"background-image: url({{'members/hai_nguyen_seawedding.jpg'|media}})\">
        <div class=\"wrap\">
            <div class=\"widget-area\">
                <section id=\"text-6\" class=\"widget widget_text\">
                    <div class=\"widget-wrap\">
                        <div class=\"textwidget\">
                            <div class=\"card two-fifths right\">
                                <h6 class=\"card-title\">Photographer</h6>
                                <p><span class=\"huge\">Xin Chào,</span></p>
                                <h5>Tôi là Nguyễn Hải</h5>
                                <p>Tôi là photographer chính của Sea Wedding. Tôi yêu mọi thứ đẹp đẽ và độc đáo không
                                    chỉ trong cuộc sống hàng ngày của tôi mà còn trong những khoảnh khắc đặc biệt như
                                    ghi lại những khoảnh khắc đẹp nhất trong cuộc đời của cô dâu chú rể.</p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
{% set posts=post_all_customer.posts %}

<div id=\"h_9\">
    <div class=\"front-page-5 flexible-widget-area\">
        <div class=\"wrap\">
            <div class=\"widget-area\">
                <section id=\"text-7\" class=\"widget widget_text\">
                    <div class=\"widget-wrap\"><h3 class=\"widgettitle widget-title\">Testimonials</h3>
                        <div class=\"textwidget\"></div>
                    </div>
                </section>
                <section id=\"gts_widget-2\" class=\"widget widget_gts_widget\">
                    <div class=\"widget-wrap\"><h3 class=\"widgettitle widget-title\">Khách Hàng Nói Về Sea Wedding</h3>
                        <div id=\"gts-testimonials\">
                            <div class=\"wrap\">
                                <ul class=\"testimonials-list\">
                                    {% for post in posts %}
                                    <li itemprop=\"review\" itemscope itemtype=\"http://schema.org/Review\">
                                        <img width=\"700\"
                                             height=\"700\"
                                             src=\"{{post.img_primary|media}}\"
                                             class=\"attachment-gts-thumbnail size-gts-thumbnail wp-post-image\"
                                             alt=\"\"
                                             srcset=\"\"
                                             sizes=\"(max-width: 700px) 100vw, 700px\"/>
                                        <blockquote itemprop=\"reviewBody\"><strong>{{post.description}}</strong><br>
                                            {{post.content|raw}}
                                        </blockquote>
                                        <h5 itemprop=\"author\">{{post.title}}</h5><span class=\"gts-company\"></span>
                                    </li>
                                    {% endfor %}
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm", "");
    }
}
