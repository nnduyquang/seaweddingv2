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
        // line 24
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["blogPosts"] ?? null), "posts", [], "any", false, false, false, 24);
        // line 25
        echo "

<div class=\"container-fluid mb-5\" id=\"h_5\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-12 title\">
                <h2>CHƯƠNG TRÌNH KHUYẾN MÃI ĐẶC BIỆT</h2>
                <p>Ưu Đãi Độc Quyền Từ Sea Wedding</p>
            </div>

            ";
        // line 35
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 36
            echo "            <div class=\"col-md-6 mb-4\">
                <div class=\"one-item\">
                    <div class=\"bg-dv\">
                        ";
            // line 39
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "featured_images", [], "any", false, false, false, 39), 0, 1));
            $context['loop'] = [
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            ];
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 40
                echo "                            ";
                if ((twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 40) == 0)) {
                    // line 41
                    echo "                        <img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\"
                             data-src=\"";
                    // line 42
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, false, 42), "html", null, true);
                    echo "\" alt=\"\">
                            ";
                }
                // line 44
                echo "                        ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 45
            echo "                    </div>
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
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("posts"        , $context['__cms_component_params']        );
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
        return array (  157 => 54,  151 => 50,  139 => 46,  136 => 45,  122 => 44,  117 => 42,  114 => 41,  111 => 40,  94 => 39,  89 => 36,  85 => 35,  73 => 25,  71 => 24,  63 => 19,  55 => 14,  41 => 2,  37 => 1,);
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
{% set posts = blogPosts.posts %}


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
                        {% for image in post.featured_images|slice(0, 1) %}
                            {% if loop.index0 ==0 %}
                        <img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\"
                             data-src=\"{{image.path}}\" alt=\"\">
                            {% endif %}
                        {% endfor %}
                    </div>
                    <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>
                </div>
            </div>
            {% endfor %}

        </div>
    </div>
</div>
{% component 'posts' %}", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm", "");
    }
}
