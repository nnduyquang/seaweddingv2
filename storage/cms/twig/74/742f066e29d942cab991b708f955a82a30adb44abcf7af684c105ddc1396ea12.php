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
        echo "<h1>This is trang chủ</h1>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<h1>This is trang chủ</h1>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm", "");
    }
}
