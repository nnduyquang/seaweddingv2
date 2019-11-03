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

/* E:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/uu-dai.htm */
class __TwigTemplate_582b61ad8242ea2ca87316d99c3b5323b929b712deb1b6d9636eb1e7dcb91869 extends \Twig\Template
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
        $context['__cms_partial_params'] = [];
        $context['__cms_partial_params']['title_page'] = "Ưu đãi"        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("title-page"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 2
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all"] ?? null), "posts", [], "any", false, false, false, 2);
        // line 3
        echo "<div id=\"promo1\">
    <div class=\"container\">

        ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
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
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 7
            echo "        ";
            if (((twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 7) % 2) == 0)) {
                // line 8
                echo "        <div class=\"row align-items-center mb-4 one-item\">
            <div class=\"col-md-6 order-md-2 order-0\" style=\"vertical-align: middle\">
                <a href=\"";
                // line 10
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 10), "html", null, true);
                echo "\">
                    <img src=\"";
                // line 11
                echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 11));
                echo "\" alt=\"\"
                         style=\"width: 100%;height: auto\">
                </a>
            </div>
            <div class=\"col-md-6 info order-md-1 order-0\">
                <h6><a href=\"";
                // line 16
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 16), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 16), "html", null, true);
                echo "</a></h6>
                <span><i class=\"far fa-calendar-alt\"></i> ";
                // line 17
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "created_at", [], "any", false, false, false, 17), "html", null, true);
                echo "    </span>

                <div class=\"content\">";
                // line 19
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 19), "html", null, true);
                echo "</div>
                <a href=\"";
                // line 20
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 20), "html", null, true);
                echo "\">ĐỌC THÊM</a>
            </div>
        </div>
        ";
            } else {
                // line 24
                echo "        <div class=\"row align-items-center mb-4 one-item\">
            <div class=\"col-md-6 order-md-1 order-0\" style=\"vertical-align: middle\">
                <a href=\"";
                // line 26
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 26), "html", null, true);
                echo "\">
                    <img src=\"";
                // line 27
                echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 27));
                echo "\" alt=\"\"
                         style=\"width: 100%;height: auto\">
                </a>
            </div>
            <div class=\"col-md-6 info order-md-2 order-0\">
                <h6><a href=\"";
                // line 32
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 32), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 32), "html", null, true);
                echo "</a></h6>
                <span><i class=\"far fa-calendar-alt\"></i> ";
                // line 33
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "created_at", [], "any", false, false, false, 33), "html", null, true);
                echo "     </span>

                <div class=\"content\">";
                // line 35
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 35), "html", null, true);
                echo "</div>
                <a href=\"";
                // line 36
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 36), "html", null, true);
                echo "\">ĐỌC THÊM</a>
            </div>
        </div>
        ";
            }
            // line 40
            echo "        ";
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
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 41
        echo "    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/uu-dai.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  159 => 41,  145 => 40,  138 => 36,  134 => 35,  129 => 33,  123 => 32,  115 => 27,  111 => 26,  107 => 24,  100 => 20,  96 => 19,  91 => 17,  85 => 16,  77 => 11,  73 => 10,  69 => 8,  66 => 7,  49 => 6,  44 => 3,  42 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% partial 'title-page' title_page='Ưu đãi'%}
{% set posts=post_all.posts %}
<div id=\"promo1\">
    <div class=\"container\">

        {% for post in posts %}
        {% if loop.index0 %2 ==0 %}
        <div class=\"row align-items-center mb-4 one-item\">
            <div class=\"col-md-6 order-md-2 order-0\" style=\"vertical-align: middle\">
                <a href=\"{{post.url}}\">
                    <img src=\"{{post.img_primary|media}}\" alt=\"\"
                         style=\"width: 100%;height: auto\">
                </a>
            </div>
            <div class=\"col-md-6 info order-md-1 order-0\">
                <h6><a href=\"{{post.url}}\">{{post.title}}</a></h6>
                <span><i class=\"far fa-calendar-alt\"></i> {{post.created_at}}    </span>

                <div class=\"content\">{{ post.description }}</div>
                <a href=\"{{post.url}}\">ĐỌC THÊM</a>
            </div>
        </div>
        {% else %}
        <div class=\"row align-items-center mb-4 one-item\">
            <div class=\"col-md-6 order-md-1 order-0\" style=\"vertical-align: middle\">
                <a href=\"{{post.url}}\">
                    <img src=\"{{post.img_primary|media}}\" alt=\"\"
                         style=\"width: 100%;height: auto\">
                </a>
            </div>
            <div class=\"col-md-6 info order-md-2 order-0\">
                <h6><a href=\"{{post.url}}\">{{post.title}}</a></h6>
                <span><i class=\"far fa-calendar-alt\"></i> {{post.created_at}}     </span>

                <div class=\"content\">{{ post.description }}</div>
                <a href=\"{{post.url}}\">ĐỌC THÊM</a>
            </div>
        </div>
        {% endif %}
        {% endfor %}
    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/uu-dai.htm", "");
    }
}
