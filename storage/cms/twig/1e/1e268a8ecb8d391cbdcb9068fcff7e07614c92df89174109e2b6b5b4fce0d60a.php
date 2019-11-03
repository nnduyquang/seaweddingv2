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

/* E:\xampp\htdocs\seaweddingv2/themes/sea-wedding/partials/title-page.htm */
class __TwigTemplate_08230cbf368bab14e7ab9e510d499a77facdcdeb68fbe963a4e5995f903facd8 extends \Twig\Template
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
        echo "<div class=\"main-title\">
    <h1>";
        // line 2
        echo twig_escape_filter($this->env, ($context["title_page"] ?? null), "html", null, true);
        echo "</h1>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/partials/title-page.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"main-title\">
    <h1>{{title_page}}</h1>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/partials/title-page.htm", "");
    }
}
