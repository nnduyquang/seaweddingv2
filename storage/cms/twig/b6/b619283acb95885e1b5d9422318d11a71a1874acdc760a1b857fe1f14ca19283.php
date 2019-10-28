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

/* C:\xampp\htdocs\seaweddingv2/plugins/quang/post/components/category_child/default.htm */
class __TwigTemplate_dde2eb84c35d358f1990b105914a04a5aec522c6a2b5d47e0e8b1c7958078d66 extends \Twig\Template
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
        $context["categories_child"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "categoriesChild", [], "any", false, false, false, 1);
        // line 2
        echo twig_escape_filter($this->env, ($context["categories_child"] ?? null), "html", null, true);
        echo "
";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/category_child/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set categories_child=__SELF__.categoriesChild %}
{{categories_child}}
", "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/category_child/default.htm", "");
    }
}
