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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/post/components/post_all/default.htm */
class __TwigTemplate_46211f8cec96aa6b29afd051ce2ebf46750c5263df25a2643781051512ee0cc7 extends \Twig\Template
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
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "posts", [], "any", false, false, false, 1);
        // line 2
        if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "count", [], "any", false, false, false, 2) != 0)) {
            // line 3
            $context["countPost"] = 0;
            // line 4
            echo "<div class=\"main-blog col-md-6\">
    ";
            // line 5
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
                if ((($context["countPost"] ?? null) == 0)) {
                    // line 6
                    echo "    ";
                    if ((($context["countPost"] ?? null) == 0)) {
                        // line 7
                        echo "
    <img src=\"";
                        // line 8
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 8), "path", [], "any", false, false, false, 8), "html", null, true);
                        echo "\" alt=\"\">

    <h3><a href=\"";
                        // line 10
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 10), "html", null, true);
                        echo "\">";
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 10), "html", null, true);
                        echo "</a></h3>
    <p>";
                        // line 11
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 11), "html", null, true);
                        echo "</p>
    ";
                        // line 12
                        $context["countPost"] = (($context["countPost"] ?? null) + 1);
                        // line 13
                        echo "    ";
                    }
                    // line 14
                    echo "    ";
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 15
            echo "</div>
<div class=\"sub-blog col-md-6\">
    ";
            // line 17
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
                // line 18
                echo "    ";
                if (((twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 18) > 0) && (twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 18) < 5))) {
                    // line 19
                    echo "    <div class=\"mb-3 pb-3 d-flex align-items-center border-bottom border-light\">
        <div class=\"pr-2 float-left\">
            <a href=\"";
                    // line 21
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 21), "html", null, true);
                    echo "\">

                <div class=\"img-sub-blogs\"
                     style=\"background-image:url(";
                    // line 24
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 24), "path", [], "any", false, false, false, 24), "html", null, true);
                    echo ");\">

                </div>

            </a>
        </div>
        <p><a href=\"";
                    // line 30
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 30), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 30), "html", null, true);
                    echo "</a>
        </p>
    </div>
    ";
                }
                // line 34
                echo "    ";
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
            // line 35
            echo "</div>
<div class=\"detail-blog col-12\">
    ";
            // line 37
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
                // line 38
                echo "    ";
                if ((twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 38) >= 5)) {
                    // line 39
                    echo "    <div class=\"one-item mb-3 pb-3 d-flex  flex-md-row flex-column align-items-center border-bottom border-light\">
        <a href=\"";
                    // line 40
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 40), "html", null, true);
                    echo "\">

            <div class=\"img-detail-blogs\"
                 style=\"background-image:url(";
                    // line 43
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 43), "path", [], "any", false, false, false, 43), "html", null, true);
                    echo ");\"></div>

        </a>
        <div>
            <h4><a href=\"";
                    // line 47
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 47), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 47), "html", null, true);
                    echo "</a></h4>
            <p class=\"time\">
                <span>Tin tức</span> - ";
                    // line 49
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "created_at", [], "any", false, false, false, 49), "html", null, true);
                    echo "
            </p>
            <p class=\"description\">
                ";
                    // line 52
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 52), "html", null, true);
                    echo "
            </p>
        </div>
    </div>
    ";
                }
                // line 57
                echo "    ";
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
            // line 58
            echo "</div>
";
        } else {
            // line 60
            echo "<div class=\"no-content\">Tin tức chưa được cập nhật</div>
";
        }
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/post_all/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  229 => 60,  225 => 58,  211 => 57,  203 => 52,  197 => 49,  190 => 47,  183 => 43,  177 => 40,  174 => 39,  171 => 38,  154 => 37,  150 => 35,  136 => 34,  127 => 30,  118 => 24,  112 => 21,  108 => 19,  105 => 18,  88 => 17,  84 => 15,  77 => 14,  74 => 13,  72 => 12,  68 => 11,  62 => 10,  57 => 8,  54 => 7,  51 => 6,  46 => 5,  43 => 4,  41 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set posts=__SELF__.posts %}
{% if posts.count !=0 %}
{% set countPost=0 %}
<div class=\"main-blog col-md-6\">
    {% for post in posts if countPost==0 %}
    {% if countPost==0 %}

    <img src=\"{{post.img_primary.path}}\" alt=\"\">

    <h3><a href=\"{{post.url}}\">{{post.title}}</a></h3>
    <p>{{post.description}}</p>
    {% set countPost=countPost+1 %}
    {% endif %}
    {% endfor %}
</div>
<div class=\"sub-blog col-md-6\">
    {% for post in posts %}
    {% if loop.index0>0 and loop.index0<5 %}
    <div class=\"mb-3 pb-3 d-flex align-items-center border-bottom border-light\">
        <div class=\"pr-2 float-left\">
            <a href=\"{{post.url}}\">

                <div class=\"img-sub-blogs\"
                     style=\"background-image:url({{post.img_primary.path}});\">

                </div>

            </a>
        </div>
        <p><a href=\"{{post.url}}\">{{post.title}}</a>
        </p>
    </div>
    {% endif %}
    {% endfor %}
</div>
<div class=\"detail-blog col-12\">
    {% for post in posts %}
    {% if loop.index0>=5 %}
    <div class=\"one-item mb-3 pb-3 d-flex  flex-md-row flex-column align-items-center border-bottom border-light\">
        <a href=\"{{post.url}}\">

            <div class=\"img-detail-blogs\"
                 style=\"background-image:url({{post.img_primary.path}});\"></div>

        </a>
        <div>
            <h4><a href=\"{{post.url}}\">{{post.title}}</a></h4>
            <p class=\"time\">
                <span>Tin tức</span> - {{post.created_at}}
            </p>
            <p class=\"description\">
                {{post.description}}
            </p>
        </div>
    </div>
    {% endif %}
    {% endfor %}
</div>
{% else %}
<div class=\"no-content\">Tin tức chưa được cập nhật</div>
{% endif %}", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/post_all/default.htm", "");
    }
}
