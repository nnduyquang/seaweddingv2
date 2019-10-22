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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/config/components/sliders/default.htm */
class __TwigTemplate_2d3678518e8b3088bd3f54a997f733605a126f098fcd86d65adfb2b3f56b6393 extends \Twig\Template
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
        $context["sliders"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "sliders", [], "any", false, false, false, 1);
        // line 2
        echo "
<div id=\"slider\">
    <div id=\"carouselExampleControls\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">
        <div class=\"carousel-inner\">
            ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["sliders"] ?? null));
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
        foreach ($context['_seq'] as $context["_key"] => $context["slider"]) {
            // line 7
            echo "            ";
            if ((twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 7) == 1)) {
                // line 8
                echo "            <div class=\"carousel-item active\">
            ";
            } else {
                // line 10
                echo "            <div class=\"carousel-item\">
            ";
            }
            // line 12
            echo "                    <div class=\"edit-slide\">
                        <div class=\"img-content\" style=\"background-image:url(";
            // line 13
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["slider"], "path", [], "any", false, false, false, 13), "html", null, true);
            echo ");\">

                        </div>
                    </div>
             </div>
             ";
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
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['slider'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 19
        echo "
            </div>
            <a class=\"carousel-control-prev\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"prev\">
                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Previous</span>
            </a>
            <a class=\"carousel-control-next\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"next\">
                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Next</span>
            </a>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  96 => 19,  76 => 13,  73 => 12,  69 => 10,  65 => 8,  62 => 7,  45 => 6,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set sliders=__SELF__.sliders %}

<div id=\"slider\">
    <div id=\"carouselExampleControls\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">
        <div class=\"carousel-inner\">
            {% for slider in sliders %}
            {% if(loop.index==1) %}
            <div class=\"carousel-item active\">
            {% else %}
            <div class=\"carousel-item\">
            {% endif %}
                    <div class=\"edit-slide\">
                        <div class=\"img-content\" style=\"background-image:url({{slider.path}});\">

                        </div>
                    </div>
             </div>
             {% endfor %}

            </div>
            <a class=\"carousel-control-prev\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"prev\">
                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Previous</span>
            </a>
            <a class=\"carousel-control-next\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"next\">
                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Next</span>
            </a>
        </div>
    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm", "");
    }
}
