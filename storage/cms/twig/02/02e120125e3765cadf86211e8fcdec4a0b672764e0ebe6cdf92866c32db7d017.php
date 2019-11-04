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

/* C:\xampp\htdocs\seaweddingv2/plugins/quang/contact/components/contact_form/messages.htm */
class __TwigTemplate_d3262a34ebc22297215574593043f27dfeee9bbe87404128245a8b3d5fd33d77 extends \Twig\Template
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
        echo "

<script type=\"text/javascript\">
    \$('.error-msg').remove();
    var errors=";
        // line 5
        echo json_encode(($context["fieldMsgs"] ?? null));
        echo "

    \$.each(errors,function(name,obj){
        \$('<div class=\"error-msg\">'+obj+'</div>').insertAfter(\$('input[name='+name+']'));
    })
</script>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/contact/components/contact_form/messages.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("

<script type=\"text/javascript\">
    \$('.error-msg').remove();
    var errors={{fieldMsgs|json_encode()|raw}}

    \$.each(errors,function(name,obj){
        \$('<div class=\"error-msg\">'+obj+'</div>').insertAfter(\$('input[name='+name+']'));
    })
</script>", "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/contact/components/contact_form/messages.htm", "");
    }
}
