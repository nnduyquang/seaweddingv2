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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/tin-tuc.htm */
class __TwigTemplate_4ccc0c90857a93c0fefdf9b2aa13893083d5f0f2e6aac66d664cdfc3cb2cea3d extends \Twig\Template
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
        $context['__cms_partial_params']['title_page'] = "Cập nhật tin tức ngành cưới"        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("title-page"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 2
        echo "<div id=\"blog1\">
    <div class=\"container\">
        <div class=\"row\">
            <div id=\"main-contain\" class=\"col-md-9\">
                <div class=\"row mt-3\">
                    ";
        // line 7
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all"] ?? null), "posts", [], "any", false, false, false, 7);
        // line 8
        echo "                    ";
        if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "count", [], "any", false, false, false, 8) != 0)) {
            // line 9
            echo "                    ";
            $context["countPost"] = 0;
            // line 10
            echo "                    <div class=\"main-blog col-md-6\">
                        ";
            // line 11
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
                if ((($context["countPost"] ?? null) == 0)) {
                    // line 12
                    echo "                        ";
                    if ((($context["countPost"] ?? null) == 0)) {
                        // line 13
                        echo "
                        <img src=\"";
                        // line 14
                        echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 14));
                        echo "\" alt=\"\">

                        <h3><a href=\"";
                        // line 16
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 16), "html", null, true);
                        echo "\">";
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 16), "html", null, true);
                        echo "</a></h3>
                        <p>";
                        // line 17
                        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 17), "html", null, true);
                        echo "</p>
                        ";
                        // line 18
                        $context["countPost"] = (($context["countPost"] ?? null) + 1);
                        // line 19
                        echo "                        ";
                    }
                    // line 20
                    echo "                        ";
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 21
            echo "                    </div>
                    <div class=\"sub-blog col-md-6\">
                        ";
            // line 23
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
                // line 24
                echo "                        ";
                if (((twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 24) > 0) && (twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 24) < 5))) {
                    // line 25
                    echo "                        <div class=\"mb-3 pb-3 d-flex align-items-center border-bottom border-light\">
                            <div class=\"pr-2 float-left\">
                                <a href=\"";
                    // line 27
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 27), "html", null, true);
                    echo "\">

                                    <div class=\"img-sub-blogs\"
                                         style=\"background-image:url(";
                    // line 30
                    echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 30));
                    echo ");\">

                                    </div>

                                </a>
                            </div>
                            <p><a href=\"";
                    // line 36
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 36), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 36), "html", null, true);
                    echo "</a>
                            </p>
                        </div>
                        ";
                }
                // line 40
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 41
            echo "                    </div>
                    <div class=\"detail-blog col-12\">
                        ";
            // line 43
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
                // line 44
                echo "                        ";
                if ((twig_get_attribute($this->env, $this->source, $context["loop"], "index0", [], "any", false, false, false, 44) >= 5)) {
                    // line 45
                    echo "                        <div class=\"one-item mb-3 pb-3 d-flex  flex-md-row flex-column align-items-center border-bottom border-light\">
                            <a href=\"";
                    // line 46
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 46), "html", null, true);
                    echo "\">

                                <div class=\"img-detail-blogs\"
                                     style=\"background-image:url(";
                    // line 49
                    echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 49));
                    echo ");\"></div>

                            </a>
                            <div>
                                <h4><a href=\"";
                    // line 53
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 53), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 53), "html", null, true);
                    echo "</a></h4>
                                <p class=\"time\">
                                    <span>Tin tức</span> - ";
                    // line 55
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "created_at", [], "any", false, false, false, 55), "html", null, true);
                    echo "
                                </p>
                                <p class=\"description\">
                                    ";
                    // line 58
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 58), "html", null, true);
                    echo "
                                </p>
                            </div>
                        </div>
                        ";
                }
                // line 63
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 64
            echo "                    </div>
                    ";
        } else {
            // line 66
            echo "                    <div class=\"no-content\">Tin tức chưa được cập nhật</div>
                    ";
        }
        // line 68
        echo "                </div>
            </div>
            <div id=\"main-sidebar\" class=\"col-md-3\">
                <div class=\"contain\">
                    ";
        // line 72
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all_service"] ?? null), "posts", [], "any", false, false, false, 72);
        // line 73
        echo "
                    <div class=\"sidebar-sea\" id=\"sidebar_service\">
                        <h3>Dịch vụ của chúng tôi</h3>
                        <ul>
                            ";
        // line 77
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post_category"]) {
            // line 78
            echo "                            <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_category"], "url", [], "any", false, false, false, 78), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_category"], "title", [], "any", false, false, false, 78), "html", null, true);
            echo "</a></li>
                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post_category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 80
        echo "                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/tin-tuc.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  276 => 80,  265 => 78,  261 => 77,  255 => 73,  253 => 72,  247 => 68,  243 => 66,  239 => 64,  225 => 63,  217 => 58,  211 => 55,  204 => 53,  197 => 49,  191 => 46,  188 => 45,  185 => 44,  168 => 43,  164 => 41,  150 => 40,  141 => 36,  132 => 30,  126 => 27,  122 => 25,  119 => 24,  102 => 23,  98 => 21,  91 => 20,  88 => 19,  86 => 18,  82 => 17,  76 => 16,  71 => 14,  68 => 13,  65 => 12,  60 => 11,  57 => 10,  54 => 9,  51 => 8,  49 => 7,  42 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% partial 'title-page' title_page='Cập nhật tin tức ngành cưới'%}
<div id=\"blog1\">
    <div class=\"container\">
        <div class=\"row\">
            <div id=\"main-contain\" class=\"col-md-9\">
                <div class=\"row mt-3\">
                    {% set posts=post_all.posts %}
                    {% if posts.count !=0 %}
                    {% set countPost=0 %}
                    <div class=\"main-blog col-md-6\">
                        {% for post in posts if countPost==0 %}
                        {% if countPost==0 %}

                        <img src=\"{{post.img_primary|media}}\" alt=\"\">

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
                                         style=\"background-image:url({{post.img_primary|media}});\">

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
                                     style=\"background-image:url({{post.img_primary|media}});\"></div>

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
                    {% endif %}
                </div>
            </div>
            <div id=\"main-sidebar\" class=\"col-md-3\">
                <div class=\"contain\">
                    {% set posts=post_all_service.posts %}

                    <div class=\"sidebar-sea\" id=\"sidebar_service\">
                        <h3>Dịch vụ của chúng tôi</h3>
                        <ul>
                            {% for post_category in posts %}
                            <li><a href=\"{{post_category.url}}\">{{post_category.title}}</a></li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/tin-tuc.htm", "");
    }
}
