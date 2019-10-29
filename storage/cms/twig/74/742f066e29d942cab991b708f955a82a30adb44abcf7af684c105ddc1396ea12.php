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
        // line 37
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 38
            echo "            <div class=\"col-md-6 mb-4\">
                <div class=\"one-item\">
                    <div class=\"bg-dv\">

                        <img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\"
                             data-src=\"";
            // line 43
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 43));
            echo "\" alt=\"\">

                    </div>
                    <h3><a href=\"";
            // line 46
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 46), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 46), "html", null, true);
            echo "</a></h3>
                </div>
            </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 50
        echo "
        </div>
    </div>
</div>
";
        // line 54
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all_service"] ?? null), "posts", [], "any", false, false, false, 54);
        // line 55
        echo "
<div id=\"h_3\" class=\"pl-lg-5 pr-lg-5 pl-3 pr-3\">
    <div class=\"row pl-lg-5 pr-lg-5 pl-3 pr-3\">
        <div class=\"col-12 title\">
            <h2>DỊCH VỤ CỦA CHÚNG TÔI</h2>
            <p></p>
        </div>
        ";
        // line 62
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 63
            echo "        <div class=\"col-md-4 mb-3\">
            <a href=\"";
            // line 64
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 64), "html", null, true);
            echo "\">
                <div class=\"sv_banner\" style=\"background-image:url(";
            // line 65
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 65), "path", [], "any", false, false, false, 65));
            echo ");\">
                    <div class=\"border-top-bot\"></div>
                    <div class=\"sv_content\">
                        <h5>";
            // line 68
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 68), "html", null, true);
            echo "</h5>
                        <div class=\"info pt-3\">
                            <p>";
            // line 70
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 70), "html", null, true);
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
        // line 77
        echo "    </div>

</div>
";
        // line 80
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("albums"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
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
        return array (  173 => 80,  168 => 77,  155 => 70,  150 => 68,  144 => 65,  140 => 64,  137 => 63,  133 => 62,  124 => 55,  122 => 54,  116 => 50,  104 => 46,  98 => 43,  91 => 38,  87 => 37,  74 => 26,  72 => 25,  63 => 19,  55 => 14,  41 => 2,  37 => 1,);
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
{% component 'albums' %}", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm", "");
    }
}
