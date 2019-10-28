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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/chi-tiet-bang-gia.htm */
class __TwigTemplate_22968eef2cbf971389853621cc6e6e09d86f566099295afd4b770a5882af9577 extends \Twig\Template
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
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-bang-gia.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  81 => 20,  69 => 14,  65 => 13,  58 => 11,  54 => 10,  51 => 9,  47 => 8,  39 => 2,  37 => 1,);
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
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-bang-gia.htm", "");
    }
}
