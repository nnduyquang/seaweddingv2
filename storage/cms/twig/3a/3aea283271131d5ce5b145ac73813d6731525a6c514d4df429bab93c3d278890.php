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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/album/components/album_other/default.htm */
class __TwigTemplate_815450f28c1cfcdf4c30d2157a52f2c045f33d38636121c5f039ade3acdbcc31 extends \Twig\Template
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
        $context["album_others"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "others", [], "any", false, false, false, 1);
        // line 2
        echo "<div class=\"other\">
    <h4>Album mới nhất <i class=\"far fa-heart\"></i></h4>
    <div class=\"row\">
        ";
        // line 5
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["album_others"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["other"]) {
            // line 6
            echo "        <div class=\"col-md-3 mb-4\">
            <div class=\"card one-item h-100\">
                <div class=\"img-cover\">
                    <a href=\"";
            // line 9
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["other"], "url", [], "any", false, false, false, 9), "html", null, true);
            echo "\">
                        <img class=\"lazy-img-src\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\"
                             data-src=\"";
            // line 11
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["other"], "img_primary", [], "any", false, false, false, 11));
            echo "\"/>
                    </a>
                </div>
                <div class=\"card-body\">
                    <span class=\"title\">";
            // line 15
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["other"], "title", [], "any", false, false, false, 15), "html", null, true);
            echo "</span>
                </div>
            </div>
        </div>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['other'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 20
        echo "    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_other/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  76 => 20,  65 => 15,  58 => 11,  53 => 9,  48 => 6,  44 => 5,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set album_others=__SELF__.others %}
<div class=\"other\">
    <h4>Album mới nhất <i class=\"far fa-heart\"></i></h4>
    <div class=\"row\">
        {% for other in album_others %}
        <div class=\"col-md-3 mb-4\">
            <div class=\"card one-item h-100\">
                <div class=\"img-cover\">
                    <a href=\"{{ other.url }}\">
                        <img class=\"lazy-img-src\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\"
                             data-src=\"{{other.img_primary|media}}\"/>
                    </a>
                </div>
                <div class=\"card-body\">
                    <span class=\"title\">{{other.title}}</span>
                </div>
            </div>
        </div>
        {% endfor %}
    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_other/default.htm", "");
    }
}
