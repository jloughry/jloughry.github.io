<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <script type="text/javascript">
            var host = "call-with-current-continuation.com";
            if ((host == window.location.host) && (window.location.protocol != "https:")) {
                window.location.protocol = "https";
            }
        </script>
		<meta name="keywords" content="Scheme language, blog"/>
		<meta name="author" content="Joe Loughry"/>
		<meta name="description" content="Blogging about mostly Scheme-related topics"/>
		<link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
		<link rel="icon" type="image/png" href="/favicon-196x196.png" sizes="196x196">
		<link rel="icon" type="image/png" href="/favicon-160x160.png" sizes="160x160">
		<link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">
		<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
		<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
		<link rel="icon" href="/favicon.ico"/>
		<meta name="msapplication-TileColor" content="#663399"/>
		<meta name="msapplication-TileImage" content="/mstile-144x144.png"/>
		<meta name="msapplication-config"
			content="https://call-with-current-continuation.com/browserconfig.xml"/>
		<meta name="application-name" content="(call/cc latest)  ;; blog"/>
		<link rel="stylesheet" href="style.css">
		<link type="text/plain" rel="author"
			href="https://www.call-with-current-continuation.com/humans.txt">
        <link rel="canonical" href="https://call-with-current-continuation.com/" />
		<title>(call/cc latest)</title>
	</head>
	<body>
		<a href="https://call-with-current-continuation.com"
            style="text-decoration: none"><h1>
			<span class="punct">(</span><!--
			--><span class="headline-keyword">call-with-current-continuation</span>
			<span class="headline-function">latest-news</span><span class="punct">)</span>
			<span class="headline-comment">;; blog</span>
		</h1></a>

        <a href="https://travis-ci.org/jloughry/jloughry.github.io"><img
            src="https://travis-ci.org/jloughry/jloughry.github.io.svg"
            alt="build status"/></a>

        <!-- end of page header -->

        <h2 id="resume">Latest résumé</h2>
        <p class="posting-date">18th April 2017</p>

        <p>My <a
        href="https://github.com/jloughry/CV/blob/master/Joe_Loughry_cybersecurity.pdf?raw=true">résumé</a>
        is always here.
        </p>

        <h2 id="newName">New Name
        <img src="graphics/spring_stickers_42bf7157c19d7b9abc0341cfe3cb3fdf04b1a1e8.png"
        alt="Spring 2016 sticker design" style="float:right; margin: -55px 0px 0px 0px">
        </h2>
        <p class="posting-date">1st March 2016</p>

        <p>
        A year in, we're changing the name of the company to
        <a href="http://CnAdocs.com">C&amp;Adocs, Inc.</a> because it's
        shorter, doesn't require explaining to non-programmers, and is
        <em>much</em> easier to type.
        </p>

        <p>
        <a href="mailto:help@cnadocs.com?subject=stickers">Email</a>
        if you want our new stickers!
        </p>

        <h2 id="openAccess">Open Access</h2>
        <p class="posting-date">31st December 2015</p>

        <p>
        The <code>git</code> repository at <a
        href="https://github.com/jloughry/data">https://github.com/jloughry/data</a>
        contains all supplemental data from Appendix B of my D.Phil. thesis
        <em>Security Test and Evaluation of Cross Domain Systems</em>
        (University of Oxford, 2014 or 2015) for replication.
        <a href="http://www.ora.ox.ac.uk/">Oxford University Research Archive (ORA)</a>
        also has them available.
        </p>

        <h2 id="backdoors">Back Doors in Cryptosystems</h2>
        <p class="posting-date">26th November 2015</p>

        <p>
        If we design weaknesses into our own system, some of the bad guys will
        use a different system (one without weaknesses) instead. Others
        will exploit the weaknesses in our system to hurt us.
        </p>

        <p>
        There's little evidence that non-state actors use encryption much
        anyway; but if they want it, there are plenty of alternatives
        designed and implemented outside the USA that they could use
        instead. Much more likely, I think, is that the back door key would
        be compromised and exploited almost immediately, as happened with
        DVD copy protection and region codes.
        </p>

        <p>
        The entire debate is a repeat of 1993, when a similar proposal
        was floated for an official cryptosystem (the Clipper chip)
        with a designed-in back door called the Law Enforcement
        Access Field, or LEAF. Way back in the 1970s, the first
        official data encryption standard (DES), used by banks to protect
        their wire transfers, was deliberately weakened. That time, it was
        done more cleverly: the fact that DES was weakened was obvious to
        mathematicians at the time, but it was also obvious that it could
        only be exploited by an entity with the computational resources
        of NSA. It was a safe bet at the time that no one else on the
        planet had NSA's computational resources. This time is different;
        they're proposing a weakness the control of which would be
        administrative, not controlled by the laws of physics. The key, literally, would
        be a key &mdash; steal a copy of that key, and you're in. (I've
        seen no actual technical proposal, only political calls for one;
        a sensible way to design such a thing would have multiple keys,
        for both accountability and damage control, but the principle
        stands: control of access to the keys would be administrative, not
        proof-of-work, and that's weak.)
        </p>

        <p>
        It seems to me that if a system like this were mandated, and was
        therefore in widespread use, that there would be correspondingly
        frequent calls for use of the &lsquo;back door key&rsquo; in
        investigations. Each time would be an opportunity for control of
        the key to be lost, compromised, stolen. A concrete example of
        this happened last year with &lsquo;TSA approved&rsquo; luggage
        padlocks. A few years ago, laws were passed that said that airport
        inspectors were allowed to cut off locks on suitcases they wanted
        to inspect. Special padlocks could be bought by travellers who
        wanted to lock their suitcases; these &lsquo;TSA approved&rsquo;
        locks could be opened by master keys that only airport inspectors
        possessed. The government was so proud of this technical solution
        that they put a photo on their web site of an officer holding a
        ring of the special keys. A high resolution photo. Within days,
        people had successfully copied the bitting patterns of all the keys
        from the photo. Complete sets of keys can now be purchased on EBay.
        </p>

        <p>
        The government tells us that without controls on data encryption,
        police investigations will &lsquo;go dark&rsquo;. But that's
        contradicted by two facts: firstly, good encryption has been
        widely available for twenty years; prompted, in fact by the 1993
        proposal, lots of really good free software was written, and lots
        of companies started selling it as well. (The only reason it's
        not widely used &mdash; except by nerds &mdash; is that it's a
        pain in the neck to use. Terrorists don't use it for the same
        reason.) Secondly, despite the existence for twenty years of very
        effective crypto software that's free for anyone to use (or easy to
        buy if you want a commercial product that comes with a warranty),
        law enforcement investigations have not gone dark; the number of
        wiretaps approved by the FISA court and the number of national
        security letters issued to librarians and network operators and
        email administrators &mdash; the number of which is public record
        &mdash; has increased dramatically since 9/11. They wouldn't be
        asking for approval for tens of thousands of wiretaps if wiretaps
        weren't working.
        </p>

        <p>
        It's not even possible to argue this one as a Devil's
        advocate; I tried just now. No law I can think of would work
        completely. The most straightforward way to attempt it would
        be to employ &lsquo;reverse entropy detectors&rsquo; on the
        Internet: <em>i.e.</em>, any traffic not using approved encryption
        methods would be dropped. However, an easy countermeasure would be
        steganography &mdash; and that uses the laws of physics right back
        against you. It's a logical contradiction. The horse is out of the
        barn; locking the door won't work any more.
        </p>

        <p>
        Takeaways:
        <ol>
            <li>
            Deliberately using weak crypto is hazardous.
            </li>
            <li>
            Good crypto is cheap and readily available but almost no one
            uses it today.
            </li>
            <li>
            You can't pass laws against mathematics.
            </li>
        </ol>
        </p>

        <p>
        Every assertion in the above paragraphs is supported by evidence;
        none of it is speculation.
        </p>

        <h2 id="healthcare">U.S. Healthcare and the Intelligence Community</h2>
        <p class="posting-date">16th October 2015</p>

        <p>
        ...the intelligence community (IC) solved the same information
        sharing problems&mdash;co&ouml;perating with partners you don't
        necessarily trust, privacy-preserving database queries, maintaining
        information integrity, anonymisation&mdash;decades ago, but no one
        on the outside knows about it. There are well-tested solutions in
        that place, proof against not just criminal or amateur hackers,
        but attackers with nation-state-level funding and resources.
        </p>

        <p>
        The healthcare industry in the U.S. has an information sharing
        problem: individuals trust their doctors, but those same
        individuals don't trust health insurance companies. Doctors are
        forced to trust multiple health insurance companies&mdash;because
        doctors need to get paid&mdash;but insurance companies certainly
        don't trust one another (because they compete). Cancer researchers,
        on the other hand, have a desperate need to access everyone's
        healthcare records, for epidemiological studies&mdash;but they
        don't need or want personally identifiable information.
        </p>

        <p>
        It's the <i>exact same problem</i> as faced by the CIA, U.S., and
        allied military forces in wartime: maybe the U.S. trust the U.K.,
        who have a backchannel to Syria via the French; the Russians don't
        trust the U.S. but need to co-ordinate air strikes with American
        forces, and all of them pull news feed from CNN and Twitter but
        don't want to leak information back to the press. This is a totally
        solved problem. Healthcare could put the IC's solution straight
        to work.
        </p>

        <h2 id="experiment-4">HTML reference</h2>
        <p class="posting-date">21st May 2015</p>

        <p>
        The following words should be <s>struck out</s> replaced by
        something else.
        </p>

        <h2 id="wordcloud">Thesis words</h2>
        <p class="posting-date">6th May 2015</p>

        <img src="./graphics/thesis_wordle.png" alt="Security Test and
            Evaluation of Cross Domain Systems">

        <h2 id="unicode">Unicode renderer hacking</h2>
        <p class="posting-date">9th April 2015</p>

        <p>What are the limits of what can be gotten away with in the UTF-8
        context of a commercial web site like <a
        href="www.linkedin.com">LinkedIn</a>?</p>

        <p>Limited support for multiple columns:</p>

        <p>Ｃｏｌｕｍｎ  Ａ　　　　Ｃｏｌｕｍｎ  Ｂ　　　　Ｃｏｌｕｍｎ  Ｃ</p>

        <p>Surprisingly, the Unicode rendering functionality usually is
        complete enough that even things like RIGHT TO LEFT OVERRIDE work
        as expected. I wasn't able to bend it to animation, though.</p>

        <p>ʇxǝʇ spɹɐʍʞɔɐq puɐ uʍop ǝpısdn</p>

<pre>
╔═╦╗
╠═╬╣ box drawing works well if enclosed in <code>&lt;pre&gt;</code> tags.
╚═╩╝
</pre>

        <p>▂▃▄▅▆▇█ Tiny bar charts; <i>i.e.</i>, Tufte's &ldquo;sparklines&rdquo;
        can be embedded, but font support for the necessary characters is
        problematic in browsers.

        <p>There is limited support for other graphics; <i>e.g.</i>,</p>
        <p>╭╮<br/>╰╯</p>

        <h2 id="experiment-3">Core of a new experiment</h2>
        <p class="posting-date">25th March 2015</p>

        <div style="opacity: 0.4">(define release-process (&lambda; (restart)</div>
        <div style="opacity: 0.8; margin-left: 1em">(call-with-current-continuation</div>
        <div style="opacity: 0.4; margin-left: 2em">(&lambda; (allow-override)</div>
        <div style="opacity: 0.2; margin-left: 3em">(set! release-message (&lambda; (where how why)))))))</div>

        <h2 id="tls">SSL is now required</h2>
        <p class="posting-date">23rd March 2015</p>

        <p>The entire site is now accessible via <code>https://</code>
        and will quietly redirect from HTTP if entered that way.</p>

        <h2 id="company">New consulting company</h2>
        <p class="posting-date">24th February 2015</p>

        <p>The software development and C&amp;A consulting firm <a
        href="./company.html"><!--
        -->call-with-current-continuation.com, Inc.</a><sup><span
        style="font-size: 50%">TM</span></sup> is open for business.
        </p>

        <h2 id="sets">Information Flows in CDS</h2>
        <p class="posting-date">20th February 2015</p>

        <table style="width: 40%; float: right; margin: 10px">
            <tr><td><a href="./graphics/venn_diagrams_muted.png"><img
                src="./graphics/venn_diagrams_muted_400w.png" alt="Venn
                diagrams of collateral, SCI, and international
                accreditations"/></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 1. <em>Cross domain
                systems are unique because they always go into an
                adversarial environment with mutually distrustful data
                owners.</em></td></tr></table>

        <p>An idea I've been playing around with for a while involves
        characterising every allowable permutation of cross
        domain system (CDS) in collateral, SCI, and international
        accreditations. The approach has been peer reviewed and
        published (13th IEEE Conference on Technologies for Homeland
        Security, Boston: 2013); the presentation here is based on a talk I
        gave last year.</p>

        <p>Incident response, analytically, looks a lot like an
        international coalition; in the case of major incident response,
        you have large organisations trying to negotiate their jurisdiction
        and announce their capabilities, in a short amount of time, to
        those who need it.</p>
        
        <p>(The moral of the story is: don't overlook potential applications
        of CDS in ephemeral situations&mdash;but to do that, we'll need
        faster and less expensive A&amp;A.)</p>

        <p>Cross domain systems exist to interconnect...anything. They will
        talk any protocol needed to do it&mdash;but they focus on protecting
        systems from each other. That's what distinguishes them from
        firewalls; a firewall is usually thought of as protecting an
        organisation's resources from outside threats, but a cross domain
        system protects the rest of the world from the organisation as
        well.</p>
        
        <p>(If that reminds you of protecting financial markets from
        rogue traders with access to inside information, it should.)</p>

        <p>Certification and accreditation testing are my interest.
        (&ldquo;Assessment and Authorisation&rdquo; is the preferred
        terminology, but I'm using the older &ldquo;C&amp;A&rdquo;
        nomenclature here.) Certification testing is done on a particular
        configuration of hardware and software called the &lsquo;evaluated
        configuration&rsquo;. Usually, an evaluated configuration is
        not a realistic field setup, because certification testers
        usually want <i>all</i> the features turned on so they can test
        them. Penetration testing is often done at this phase; penetration
        testers similarly demand root access and source code. Much like
        covert channel analysis, penetration testing has no natural end
        state; pen testers, given enough time, nearly always can come up
        with yet another layer of attack. Part of my research aims to
        enable the cross domain system developer some measure of control
        over the duration of certification testing, which otherwise
        <i>will</i> stretch out to consume all of the available time and
        money and resources.</p>

        <p>The second type of testing done on cross domain systems happens
        at the end of installation, but before approval-to-operate. It's
        called accreditation, and it's done&mdash;every time&mdash;on a particular
        installation, in a particular place, with a particular
        configuration and particular users. Certification may be done once, or
        at most once a year; accreditation is done every time you sell one.</p>

        <p><em>It pays to get good at accreditation, because you'll be
        doing it lots.</em></p>

        <p>Accreditation testing is interesting because for cross domain
        systems it always involves more than one
        accreditor&mdash;accreditors represent the interests of data
        owners&mdash;who mistrust one another. Since there are multiple
        accreditors, and since each one thinks his or her data is the
        most important, this leads directly to multiple rounds of
        testing. Everyone knows what the best attacks are; there's only
        so many variations on how you can test that. If every one of those
        accreditors, for due diligence, performs the same tests over and
        over again, we don't learn anything new. That's the problem I
        set out to solve.

        <table style="width: 40%; float: right; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_1.png"><img
                src="./graphics/venn_diagrams_for_slides_1_400w.png"
                alt="accreditor's view of a computer system"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 2. <em>The larger circle
                contains known threats that would be desirable to mitigate
                (surrounded, of course, by a larger universe of unknown
                threats); the smaller circle contains only those threats it
                is deemed possible to mitigate at this
                time.</em></td></tr></table>

        <p>In my model, the following assumptions are required:</p>

        <ol>
            <li>Accreditors have appropriate security clearances for their
            jobs.</li>
            <li>Every cross domain system has a high side and a low
            side.</li>
        </ol>

        <p>It's a minimal set of assumptions, not too unrealistic and
        not far off from the real world. First, we assume that
        all accreditors have just the right security clearance to do
        their jobs. If they work on Top Secret, they have a Top Secret
        clearance. If they only work on Confidential, then they will
        <em>not</em> have a Secret clearance, or a higher one. Everybody's
        cleared only to the level they need to be.</p>

        <p>The second assumption is that there's a high side and a low
        side. That's often a matter of opinion, especially in international
        accreditations, but it simplifies the analysis. Besides, you
        can always partition any cross domain system with more than two
        inputs or outputs pairwise into a series of one-in-one-out cross
        domain systems. We used to have to do this all the time with
        pie-in-the-sky PL-5 customer requirements that we could compose
        out of one or more PL-4 approved components. PL-5 components are
        expensive; PL-4 components are not. So you can always reduce
        a cross domain problem, ultimately, to a high side and a low
        side.</p>

        <p>Consider an accreditor's view of the system (Figure 2, above).
        The larger circle represents those threats that would be
        <em>desirable</em> to mitigate. The smaller circle contains the
        subset of threats that it's <em>feasible</em> to
        mitigate&mdash;everything has a cost, and not every security
        control the accreditor wants, the accreditor is likely to get. The
        area between the circles is the residual risk.</p>

        <table style="width: 40%; float:right; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_2.png"><img
                src="./graphics/venn_diagrams_for_slides_2_400w.png"
                alt="two Venn diagrams non-overlapping"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 3. <em>SCI-type
                cross domain system</em></td></tr></table>

        <p>In Figure 3, to the right, we have a multi-level system. As
        soon as you have a multi-level system, you may have two
        accreditors, and in the most general case, shown here, they
        share no information.</p>

        <p><em>To the right, then, is the essence of an SCI (or
        international) accreditation.</em></p>

        <p>Accreditor 1 has a completely
        independent idea of what threats exist (<i>A</i><sub>1</sub>)
        and what risk mitigations are possible (<i>B</i><sub>1</sub>);
        similarly, Accreditor 2 is cognisant of a different set of risks
        (<i>A</i><sub>2</sub>) that would be desirable to mitigate,
        and a smaller set (<i>B</i><sub>2</sub>) of risks that are, from
        Accreditor 2's perspective, possible to mitigate. The sets are
        disjoint because we assume (in the most general case) that
        accreditors read into different compartments are unable or
        unwilling to share information.</p>

        <p>The circles may overlap&mdash;of course they do!&mdash;everyone
        knows what the common attacks are, just as everyone knows what's
        affordable to mitigate. Those are your baseline security controls;
        what we're more interested in here are classified threats and
        classified threat mitigations.</p>

        <table style="width: 40%; float: left; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_3.png"><img
                src="./graphics/venn_diagrams_for_slides_3_400w.png"
                alt="two Venn diagrams beginning to overlap"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 4. <em>Example of
                public information (area <i>R</i>)</em></td></tr></table>

        <p>In Figure 4, to the left, the highlighted area <i>R</i> is
        the agreed residual risk that both accreditors share. These
        particular accreditors don't share much&mdash;the question of
        which is the &lsquo;high side&rsquo; and which is the &lsquo;low
        side&rsquo; is often a matter of opinion, especially in the
        SCI world&mdash;but they agree on a few known threats. Both
        accreditors concur that some risks, highlighted here in cyan, are
        not protect-able against, and are going to remain a threat to the
        system in production, as residual risk. It's outside the smaller
        areas (<i>B</i><sub>1</sub> and <i>B</i><sub>2</sub>) that both
        accreditors know they can mitigate.</p>
        
        <p>In the general sense, areas <i>A</i><sub>1</sub> and
        <i>A</i><sub>2</sub> probably overlap to a greater or lesser
        degree&mdash;since everyone knows about the major problems:
        bot-nets and Heartbleed and script kiddies and what-not&mdash;but
        it's hard to draw Venn diagrams in three dimensions.</p>

        <p><em>This is the ideal SCI situation, reachable sometimes in
        practice. Public information, after all, need not be protected from
        disclosure.</em></p>

        <table style="width: 40%; float: right; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_4.png"><img
                src="./graphics/venn_diagrams_for_slides_4_400w.png"
                alt="Venn diagrams overlapping more, with the outer
                circle of one overlapping the inner circle of the
                other"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 5. <em>Classified
                information (region <i>L</i>) at risk of information
                leakage</em></td></tr></table>

        <p>But here's where things begin to get interesting. As
        the two accreditors perform their security testing, both of
        them learn more about the system under test. The small
        area <i>C</i>, shown in green in Figure 5 to the right, is
        <b>safe</b> because Accreditor
        1 has mitigated it with security controls. The second accreditor
        can legally be made aware (without loss of generality) that that
        the first has mitigated that portion of the threat, so Accreditor 2
        doesn't have to worry about area <i>C</i> any more.</p>

        <p>But there's a new risk of information leakage from high to low.
        Region <i>L</i>, shown in dark blue, represents classified
        information&mdash;that is, the existence of a threat that
        is classified higher than the clearance of the low-side
        accreditor. (Remember the first assumption: that accreditors are
        cleared only as high as they need to be, in adherence to the letter
        <em>and</em> the spirit of the law.)</p>

        <p>The high side accreditor, on the right side of the figure,
        doesn't want to admit to the low side accreditor that these threats
        <em>still</em> can't properly be mitigated even with classified
        security controls. But it remains safe, because the high side
        accreditor isn't <em>compelled</em> to say anything, and it's safer
        to keep his or her mouth shut. There's a threat of information
        leakage, but no actual information leakage, and the existence of
        the classified threat (for which no mitigation is feasible on the
        high side) remains protected.</p>

        <table style="width: 40%; float: left; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_5.png"><img
                src="./graphics/venn_diagrams_for_slides_5_400w.png"
                alt="Venn diagrams overlapping so much now
                that the centre regions of both overlap
                slightly"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 6. <em>The danger
                zone</em></td></tr></table>

        <p>The red zone (Figure 6, to the left) emerges with the occurrence
        of <em>forced communication</em> for the first time. The high side
        accreditor&mdash;and remember, this is an international (or SCI)
        cross domain system, so the question of which side is the high side
        is a matter of opinion&mdash;knows something dangerous:
        he or she knows that some of the low-side security controls <b>don't
        work</b>. But that information is classified. The high side
        accreditor, though, is required personally to accept the risk for the correct
        operation of the <em>entire</em> cross domain system&mdash;not just
        part of it&mdash;if he or she accredits it.</p>
        
        <p>Should the high-side accreditor refuse to accredit? To do
        otherwise would be to shoulder a known risk (that the true residual risk
        of the system is higher than generally believed); in that case
        the high-side accreditor runs the risk of going to jail. Unable
        to say precisely why he or she won't accredit&mdash;because that would
        be a violation of the oath to protect classified information&mdash;if
        he or she refuses to accredit, <em>even if not saying why</em>, the
        refusal in itself leaks the existence of a classified threat with
        no known mitigation.</p>
        
        <p>Checkmate. (Note that the previous risk of leakage of the
        existence of classified threat mitigations, in dark blue, still
        exists, but that's a different kind of risk.)</p>

        <p>Here, there is not only a risk of information leakage but
        personal risk to Accreditor 2; the red region
        <i>H</i>&mdash;remember, this is still an SCI
        accreditation&mdash;is believed by the low side accreditor to
        be adequately mitigated by security controls, but the second
        accreditor either doesn't know about the first's mitigation or
        doesn't believe it'll work.</p>

        <table style="width: 40%; float: right; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_6.png"><img
                src="./graphics/venn_diagrams_for_slides_6_400w.png"
                alt="Venn diagrams approaching complete overlap, shrinking
                the problematic regions"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 7. <em>As the situation
                approaches a purely collateral accreditation, the zone of
                hazardous overlap begins to shrink.</em></td></tr></table>

        <p>As the two accreditors get more and more into each others'
        heads&mdash;facilitated by more overlap of their SCI compartments
        or international intelligence sharing agreements&mdash;the area of
        agreement over the true level of residual risk of the cross domain
        system grows (Figure 7, to the right). The risk of classified
        information leakage and personal risk to one or more accreditors
        diminishes as the situation approaches a pure collateral configuration.</p>

        <p>In the degenerate situation, Figure 8 (below) there is complete agreement
        on residual risk (<i>A</i><sub>1</sub> = <i>A</i><sub>2</sub> =
        <i>R</i>), complete consensus on safety (<i>B</i><sub>1</sub> =
        <i>B</i><sub>2</sub> = <i>C</i>), and both accreditors know all.
        It's not very interesting.</p>

        <table style="width: 40%; float: left; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_7.png"><img
                src="./graphics/venn_diagrams_for_slides_7_400w.png"
                alt="completely overlapping Venn
                diagrams"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 8. <em>The degenerate
            case</em></td></tr></table>

        <p>That was the abstract situation&mdash;one that models
        international or SCI accreditations well, in situations where there
        is no formal channel of communication between accreditors on
        different sides. That's not an uncommon problem for cross domain
        system developers to find themselves in; does the U.S. government
        &lsquo;outrank&rsquo; Her Majesty&apos;s own need for information
        protection? The U.K. government doesn't think so.</p>

        <p>So let's look at a simpler case, one occurring entirely inside
        the U.S. military or U.S. government itself (although not inside
        the intelligence community&mdash;they use SCI). Here we're
        connecting a Top Secret network to a Secret one. We can assume
        from this point on that the high side accreditor knows everything
        the low side accreditor knows. But the high side accreditor knows
        more&mdash;Top Secret things. Regardless, it ought to be a solvable
        problem, because there is no inaccessible knowledge. There is
        information asymmetry, but no hidden information this time. (See
        Figure 9, below and to the right.)</p>

        <table style="width: 40%; float: right; margin: 10px">
            <tr><td><a
                href="./graphics/venn_diagrams_for_slides_8.png"><img
                src="./graphics/venn_diagrams_for_slides_8_400w.png"
                alt="a smaller Venn diagram completely enclosed
                within the outer circle of a larger one, partially
                overlapping the inner circle of the larger
                one"></a></td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="text-align: center">Figure 9. <em>Collateral CDS with
                different security clearances and forced communication</em></td></tr></table>

        <p>Oh, no&mdash;it happened again! As security testing progresses,
        it can occur that the high side accreditor becomes aware of
        security controls that the low side accreditor has put in place, in
        good faith, but that <b>do not work</b>. I call this &lsquo;guilty
        knowledge&rsquo; (see below). The other areas in the Venn diagrams,
        the dark grey and black areas, are classified threats and
        classified threat mitigations that the high side accreditor can't
        talk about, because they're legitimately classified. But the area
        in red represents <em>forced communication</em>.</p>

        <table style="width: 40%; float: left; margin: 10px">
            <tr><td><a
            href="./graphics/venn_diagrams_for_slides_9.png"><img
            src="./graphics/venn_diagrams_for_slides_9_400w.png" alt="a
            smaller Venn diagram completely enclosed within the outer
            circle of a larger one, partially overlapping the inner circle
            of the larger one"></a></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td style="text-align: center">Figure 10. <em>Summary of
            collateral CDS difficulties: information leakage, &lsquo;guilty
            knowledge&rsquo;, and higher-classified threats and
            mitigations</em></td></tr></table>

        <p>There is a paradox in the Bell&ndash;LaPadula security model <a
        href="#thesis-reference">[1]</a>. Should you follow the letter and the
        spirit of the law, clearing your accreditors only to the level
        they need to be cleared to do their jobs, then occasionally some
        desirable
        information flows are inhibited and some undesirable information
        flows are forced. If, on the other hand, you clear a pool of
        accreditors to Top Secret, and use them on jobs that don't
        require a Top Secret clearance all the time, then the information
        asymmetry disappears and the information leakage doesn't happen. It
        is a paradox, that loosening the security rules actually improves
        security.</p>

        <p>We conclude, therefore, that in some reachable cases, that is,
        in the <em>real world</em> installation
        problems that cross domain system developers and installers
        sometimes encounter in the field, desirable information flows
        may be inhibited, or undesirable information flows may be
        forced. These represent information asymmetry in the
        accreditor-to-accreditor relationship and are logical
        consequences of the hierarchical security relationship. We
        can't prevent them&mdash;the possibility is inherent, as we have
        seen, in SCI, international, and collateral accreditations.</p>
        
        <p>But can we detect and avoid the trap? The goal of the <b>Policy
        Interaction</b> layer in our notional future cross domain solution
        is to find and highlight the problematic configurations during
        testing and development in order to streamline the process and
        reduce the cost (in both time and dollars) of CDS deployments.</p>

        <p><b>References:</b></p>

        <p id="thesis-reference">[1] Loughry, J. <i>Security Test and
        Evaluation of Cross Domain Systems.</i> PhD thesis, University of
        Oxford, 2016.</p>

        <h2 id="404">Testing Custom 404 Error Page</h2>
        <p class="posting-date">7th February 2015</p>

        <p><a
        href="https://www.call-with-current-continuation.com/nothing">This</a>
        is for Papa, a link to a proof-of-concept implementation of a
        custom 404 error page that provides a more useful link back to
        content.</p>

        <h2 id="hiring">Why you ought to hire me</h2>
        <p class="posting-date">22nd January 2015</p>

        <p>
            I've spent a few years caring deeply about the security testing
            of <a
            href="http://en.wikipedia.org/wiki/Cross-domain_solution">cross
            domain</a> systems, a technology originally developed by the
            military and intelligence community, but with clear applications
            to other information-sharing problems like those faced by the
            health care industry.</p>
            
        <ul>
            <li>I can predict and control computer security testing &mdash;
                that's got to be worth a job.</li>
            <li>Insurance companies and national intelligence agencies are
                increasingly hard to tell apart&mdash;the same security analysis
                and security controls work on both.</li>
            <li>Perhaps we ought to protect electronic health care records
                better than we've been protecting credit card data
                lately.</li>
            <li>New grads come out plugged into the latest
                research&mdash;critical in this threat environment. Old
                hands have experience that new grads lack. I have
                both.</li>
        </ul>

        <p>My latest <a
        href="https://github.com/jloughry/CV/blob/master/Joe_Loughry_cybersecurity.pdf?raw=true">résumé</a>
        is always here.</p>

        <h2 id="security_contact">Security</h2>
        <p class="posting-date">26th December 2014</p>

        <p>New security contact information page
            <a href="security/security.html">here</a>.</p>

        <h2 id="sequence">An optimal Banker's sequence of order 4</h2>
        <p class="posting-date">9th December 2014; updated 11th and 14th
        December 2014 and 14th February 2015</p>

        <p><a
        href="https://github.com/jloughry/jloughry.github.io/blob/master/papers/subset.pdf?raw=true">Optimal
        sequences</a> for orders 1, 2, and 3 are easy to generate and not
        always unique; the optimal first order Banker's sequence, expressed
        in binary and starting from zero, is, of course, uniquely:</p>

        <table>
            <tr>
                <th style="padding: 5px">Weight</th>
                <th style="padding: 5px; text-align: center">Possible Bit
                    Vectors</th>
                <th style="padding: 5px">Graph<a
                    href="#note_banker_1"><sup>1</sup></a></th></tr>
            <tr>
                <td style="text-align: center">(0)</td>
                <td style="text-align: center"><span
                    class="example-path">0</span></td>
                <td rowspan="2"><a href="./graphics/optimal_1.png"><img
                    src="./graphics/optimal_1_small.png" alt="optimal
                    order 1 Banker's sequence"/></a></td></tr>
            <tr>
                <td style="text-align: center">(1)</td>
                <td style="text-align: center"><span
                    class="example-path">1</span></td></tr>
        </table>

        <p id="note_banker_1"><sup>1</sup>Example path shown in <span
            class="example-path">red</span>; click graph to embiggen (<a
            href="./graphics/optimal_1.svg">SVG</a>).</p>

        <p>The optimal second order Banker's sequence is not unique; it can
        be either of:</p>

        <table>
            <tr>
                <th style="padding: 5px">Weight</th>
                <th style="padding: 5px; text-align:center"
                    colspan="2">Possible Bit Vectors</th>
                <th style="padding: 5px">Graph<a
                    href="#note_banker_2"><sup>2</sup></a></th></tr>
            <tr><td style="text-align: center">(0)</td>
                <td style="text-align: center"><span
                    class="example-path">00</span></td><td>00</td><td
                        rowspan="4"><a href="./graphics/optimal_2.png"><img
                            src="./graphics/optimal_2_small.png"
                            alt="optimal order 2 Banker's
                            sequence"/></a></td></tr>
            <tr><td style="text-align: center">(1)</td>
                <td style="text-align: center"><span
                    class="example-path">01</span></td><td>10</td></tr>
            <tr><td style="text-align: center">(2)</td>
                <td style="text-align: center"><span
                    class="example-path">11</span></td><td>11</td></tr>
            <tr><td style="text-align: center">(1)</td>
                <td style="text-align: center"><span
                    class="example-path">10</span></td><td>10</td></tr>
        </table>

        <p id="note_banker_2"><sup>2</sup>Example path shown in <span
            class="example-path">red</span>; click graph to embiggen (<a
            href="./graphics/optimal_2.svg">SVG</a>).</p>

        <p>A third order Banker's sequence admits even more solutions; here
        are some (but possibly not all) of them:</p>

        <table>
            <tr>
                <th style="padding:5px">Weight</th>
                <th style="padding: 5px; text-align: center"
                    colspan="5">Possible Bit Vectors</th>
                <th>Graph<a href="#note_banker_3"><sup>3</sup></a></th></tr>
            <tr><td style="text-align: center">(0)</td>
                <td><span
                    class="example-path">000</span></td>
                    <td>000</td><td>000</td><td>000</td><td>000</td>
                <td rowspan="8"><a href="./graphics/optimal_3.png"><img
                    src="./graphics/optimal_3_small.png"
                    alt="optimal order 3 Banker's sequence"/></a></td></tr>
            <tr><td style="text-align: center">(1)</td>
                <td><span class="example-path">001</span>
                    </td><td>100</td><td>010</td><td>001</td><td>100</td></tr>
            <tr><td style="text-align: center">(2)</td>
                <td><span class="example-path">011</span></td>
                    <td>110</td><td>011</td><td>101</td><td>101</td></tr>
            <tr><td style="text-align: center">(1)</td>
                <td><span class="example-path">010</span></td>
                    <td>010</td><td>001</td><td>100</td><td>001</td></tr>
            <tr><td style="text-align: center">(2)</td>
                <td><span class="example-path">110</span></td>
                    <td>011</td><td>101</td><td>110</td><td>011</td></tr>
            <tr><td style="text-align: center">(1)</td>
                <td><span class="example-path">100</span></td>
                    <td>001</td><td>100</td><td>010</td><td>010</td></tr>
            <tr><td style="text-align: center">(2)</td>
                <td><span class="example-path">101</span></td>
                    <td>101</td><td>110</td><td>011</td><td>110</td></tr>
            <tr><td style="text-align: center">(3)</td>
                <td><span class="example-path">111</span></td>
                    <td>111</td><td>111</td><td>111</td><td>111</td></tr>
        </table>

        <p id="note_banker_3"><sup>3</sup>Example path shown in <span
            class="example-path">red</span>; click graph to embiggen (<a
            href="./graphics/optimal_3.svg">SVG</a>).</p>

        <p>The fourth order Banker's sequence, surprisingly, is much
        trickier; this is the only known solution, so far, up to
        symmetry:<a href="#note_banker_4"><sup>4</sup></a></p>

        <!-- There has got to be a better way to do this with CSS. -->

        <table>
            <tr>
                <td style="text-align: center"><a
                    href="./graphics/minimised_snowflake_order_4.png"><img
                    src="./graphics/minimised_snowflake_order_4_small.png"
                    alt="minimised snowflake diagram of the (unique?)
                        optimal order 4 Banker's sequence"/></a></td>
                <td style="text-align: center; width: 25%">or, equivalently,</td>
                <td style="text-align: center"><a href="./graphics/optimal_4.png"><img
                    src="./graphics/optimal_4_small.png"
                    alt="optimal (and unique?) order 4 Banker's sequence"/></a></td>
            </tr>
        </table>

        <p id="note_banker_4"><sup>4</sup>Example path shown in <span
            class="example-path">red</span>; click graphs to embiggen
            (SVG <a
            href="./graphics/minimised_snowflake_order_4.svg">snowflake</a>
            or <a href="./graphics/optimal_4.svg">optimal network</a>).</p>

        <p>It is not known whether this solution is unique, or if any
        optimal solutions exist for orders &gt; 4. Development is under way
        of a programme to search exhaustively for all solutions in any
        <i>n</i>.</p>

		<h2 id="idea-1">Store-and-Forward TCP/IP</h2>
		<p class="posting-date">11th November 2014</p>

		<p>I have intermittent network connectivity. What I wish for
		sometimes is a virtual TCP/IP that would fool network applications
		into working well enough, without hanging, until real network
		service returned, at which point it would silently catch up. Web
		pages would not load, obviously, but I could enter new Google
		calendar events, send emails, and commit changes to GitHub without
		having to wait and remember to do it later. As it is, I write notes
		to myself. I think the network stack could do something similar.</p>

		<p>Clearly, new apps can be written to have the same behaviour, but
		this would enable old apps, without rewriting, to have the new
		features.</p>

		<h2 id="papers">Papers hosted here</h2>
		<p class="posting-date">22nd October 2014</p>

<!-- 6789012345678901234567890123456789012345678901234567890123456789012345 -->
<!--     1         2         3         4         5         6         7      -->

		<p>Copies of my published papers are hosted on this web site (you
		can find links to them on my
        <a href="https://github.com/jloughry/CV/blob/master/Joe_Loughry_cybersecurity.pdf?raw=true">résumé</a>)
        or on the respective copyright holders' site. Where no freely
        available version is available (maybe it's behind a paywall), <a
        href="mailto:Joe.Loughry@call-with-current-continuation.com?subject=Reprint%20request">email
        me</a> and I'll send you a copy.</p>

		<h2 id="pgp">New PGP Key</h2>
		<p class="posting-date">20th August 2014</p>

		<p>Key fingerprint:
			<a href="Joe.Loughry.txt"><!--
				--><code>2C3B 11A1 CE7C 5B1F 87BC  F5D0 299D 7116 EDC2 ABE5</code></a></p>

		<h2 id="experiment-2">DOM Experiments</h2>
		<p class="posting-date">9th June 2014</p>

		<p>The two examples of syntax-highlighted code below were done using two
		different methods for implementing the indentation seen: the first uses
		repeated &amp;nbsp; entities (as many as needed), and the second was done
		with <span class="html-tag">div</span> blocks that implement hanging
		indents of the whole <em>s</em>-expression block automatically (as well
		as some special <code>inline</code> <span class="html-tag">div</span>
		tags that don't automatically put a newline after).</p>

		<h2>Added <a href="https://call-with-current-continuation.com/humans.txt"><!--
			-->humans.txt</a> file.</h2>
		<p class="posting-date">23rd February 2014</p>

		<p>See <a href="http://humanstxt.org/">Humans TXT: We Are People,
			Not Machines</a> for information.</p>

		<h2 id="experiment-1">Testing Some Syntax Highlighting Code</h2>
		<p class="posting-date">1st Jan 2014</p>

		<p>I've been experimenting with CSS for syntax highlighting.</p>

		<p>TO DO:</p>

		<ul>
			<li>selector inheritance</li>
			<li>line-height</li>
			<li>more semantic mark-up</li>
		</ul>

		<p>The first code example uses lots of <span class="html-tag">span</span>
		but no special <span class="html-tag">div</span> tags:</p>

		<div id="syntax-highlighting-test-1">
			<div class="code">
				<span class="punct">(</span><!--
				--><span class="keyword">define</span>
				<span class="identifier">length</span>
				<br/>
				&nbsp;&nbsp;<span class="punct">(</span><!--
				--><span class="keyword">lambda</span>
				<span class="punct">(</span><!--
				--><span class="identifier">l</span><!--
				--><span class="punct">)</span>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="punct">(</span><!--
				--><span class="keyword">if</span>
				<span class="punct">(</span><!--
				--><span class="function">null?</span>
				<span class="identifier">l</span><!--
				--><span class="punct">)</span>
				&nbsp;&nbsp;
				<span class="comment">; this is a comment</span>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="constant">0</span>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="punct">(</span><!--
				--><span class="function">+</span>
				<span class="constant">1</span>
				<span class="punct">(</span><!--
				--><span class="function">length</span>
				<span class="punct">(</span><!--
				--><span class="function">cdr</span>
				<span class="identifier">l</span><!--
				--><span class="punct">))))))</span>
			</div>
		</div>

		<p>The second example uses the auto-indent <span class="html-tag">div</span>
		method. Note that no <code>&amp;nbsp;</code> character entities are needed
		in the source:</p>

		<div id="syntax-highlighting-test-2">
			<div class="code">
				<div class="syntax-multiline-block">
					<span class="punct">(</span><span class="keyword">define</span>
					<span class="identifier">length</span>
					<div class="syntax-multiline-block">
						<span class="punct">(</span><span class="keyword">lambda</span>
						<span class="punct">(</span><span class="identifier">l</span><span
							class="punct">)</span>
						<div class="syntax-multiline-block">
							<span class="punct">(</span><span class="keyword">if</span>
							<span class="punct">(</span><span class="function">null?</span>
							<span class="identifier">l</span><span class="punct">)</span>
							<div class="syntax-comment">; this is a comment</div>
							<br/>
							<span class="constant">0</span>
							<br/>
							<div class="syntax-same-line-block">
								<span class="punct">(</span><span class="function">+</span>
								<span class="constant">1</span>
								<div class="syntax-same-line-block">
									<span class="punct">(</span><span class="function">length</span>
									<div class="syntax-same-line-block">
										<span class="punct">(</span><span
											class="function">cdr</span>
										<span class="identifier">l</span><span
											class="punct">))))))</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<p>It's a little disappointing that closing parentheses cannot be put
		inside the <span class="html-tag">div</span> blocks if we want to stack
		all the parens at the end, but if stacking the closing parens is not
		desired, then putting the closing paren <em>after</em> the closing <span
		class="html-tag">/div</span> keeps the indentation levels of the closing
		parens where they ought to be (<em>i.e.</em>, don't put closing parens
		inside the closing <span class="html-tag">/div</span>.)</p>

		<p>The third example was auto-generated by a syntax-highlighting parser:</p>

		<div id="syntax-highlighting-test-3">
			<div class="code">
				<div class="syntax-comment">; coming soon</div>
			</div>
		</div>

		<p>(Note that a tab is automatically inserted before in-line comments;
		I may have to fix that.)</p>

		<h2 id="about">About this blog</h2>

		<p>This didn't start out as a real blog; it started as a
		place for me to experiment with techniques I might want to
		use somewhere else.</p>

        <p>All code here validates as <a
        href="http://validator.w3.org/check?uri=http%3A%2F%2Fcall-with-current-continuation.com%2F">HTML5</a>
        and <a
        href="http://jigsaw.w3.org/css-validator/validator?uri=www.call-with-current-continuation.com&amp;profile=css3&amp;usermedium=all&amp;warning=1&amp;vextwarning=">CSS
        level 3</a> according
        to
        the W3C Markup Validation Service and CSS Validation Services.</p>

		<!-- This trick using comments is useful for wrapping long lines. -->

		<p>Email me here:
		<a href="mailto:Joe.Loughry@CnAdocs.com?subject=Blog%20contact"><!--
		-->Joe.Loughry@CnAdocs.com</a>
        <br/>
        PGP key:
			<a href="Joe.Loughry.txt"><!--
				--><code>2C3B 11A1 CE7C 5B1F 87BC  F5D0 299D 7116 EDC2 ABE5</code></a></p>

		<hr class="footnote">
		<p class="footnote"><!-- BUILD NUMBER -->Build 171</p>
	</body>
</html>

